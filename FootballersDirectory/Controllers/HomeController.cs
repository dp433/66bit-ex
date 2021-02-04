using FootballersDirectory.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace FootballersDirectory.Controllers
{
	public class HomeController : Controller
	{
		private readonly FootballerContext db;
		private readonly SelectList teams;

		public HomeController(FootballerContext context)
		{
			db = context;
			teams = GetTeams();
		}

		[HttpGet]
		public async Task<IActionResult> Players()
		{
			return View(await db.Players.ToListAsync());
		}

		[HttpGet]
		public IActionResult Create()
		{
			ViewBag.Teams = teams;
			return View();
		}

		[HttpPost]
		public async Task<IActionResult> Create(Footballer footballer)
		{
			if (!ModelState.IsValid)
				return View(footballer);

			if (!PlayersExists(footballer))
			{
				db.Players.Add(footballer);
				await db.SaveChangesAsync();
				return RedirectToAction("Players");
			}

			ViewBag.Teams = teams;
			ViewBag.Message = "ИГРОК УЖЕ ПРИСУТСВУЕТ В БАЗЕ!!!";
			return View(footballer);
		}

		[HttpGet]
		public async Task<IActionResult> Edit(int? id)
		{
			if (id != null)
			{
				Footballer footballer = await db.Players.FirstOrDefaultAsync(p => p.Id == id);
				if (footballer != null)
				{
					ViewBag.Teams = teams;
					return View(footballer);
				}
			}
			return NotFound();
		}

		[HttpPost]
		public async Task<IActionResult> Edit(Footballer footballer)
		{
			db.Players.Update(footballer);
			await db.SaveChangesAsync();
			return RedirectToAction("Players");
		}

		[ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
		public IActionResult Error()
		{
			return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
		}

		private bool PlayersExists(Footballer footballer)
		{
			return db.Players.Any(
				p =>
					p.Name == footballer.Name &&
					p.Surname == footballer.Surname &&
					p.Sex == footballer.Sex &&
					p.BirthDate == footballer.BirthDate &&
					p.TeamName == footballer.TeamName &&
					p.Country == footballer.Country);
		}

		private SelectList GetTeams()
		{
			var _teams = db.Players.Select(p => p.TeamName).Distinct().OrderBy(p => p).ToList();
			SelectList teams = new SelectList(_teams);
			_teams.Add("Другая...");
			return teams;
		}
	}
}