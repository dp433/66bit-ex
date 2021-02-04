using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace FootballersDirectory.Models
{
	public class Footballer
	{
		public int Id { get; set; }
		[Required]
		public string Name { get; set; }
		[Required]
		public string Surname { get; set; }
		[Required]
		public string Sex { get; set; }
		[Required]
		public DateTime BirthDate { get; set; }
		[Required]
		public string TeamName { get; set; }
		[Required]
		public string Country { get; set; }
	}
}
