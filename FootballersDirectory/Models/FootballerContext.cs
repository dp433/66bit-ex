using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FootballersDirectory.Models
{
	public class FootballerContext: DbContext
	{
		public DbSet<Footballer> Players { get; set; }
		public FootballerContext(DbContextOptions<FootballerContext> options)
			: base(options)
		{
		}
	}
}
