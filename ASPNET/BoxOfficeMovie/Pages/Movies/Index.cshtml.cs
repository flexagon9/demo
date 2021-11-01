using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using BoxOfficeMoive.Models;
using BoxOfficeMovie.Data;

namespace BoxOfficeMovie.Pages.Movies
{
    public class IndexModel : PageModel
    {
        private readonly BoxOfficeMovie.Data.BoxOfficeMovieContext _context;

        public IndexModel(BoxOfficeMovie.Data.BoxOfficeMovieContext context)
        {
            _context = context;
        }

        public IList<Movie> Movie { get;set; }

        public async Task OnGetAsync()
        {
            Movie = await _context.Movie.ToListAsync();
        }
    }
}
