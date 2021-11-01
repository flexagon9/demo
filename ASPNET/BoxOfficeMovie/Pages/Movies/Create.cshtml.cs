using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using BoxOfficeMoive.Models;
using BoxOfficeMovie.Data;

namespace BoxOfficeMovie.Pages.Movies
{
    public class CreateModel : PageModel
    {
        private readonly BoxOfficeMovie.Data.BoxOfficeMovieContext _context;


        public CreateModel(BoxOfficeMovie.Data.BoxOfficeMovieContext context)
        {
            _context = context;
        }

        public IActionResult OnGet()
        {
            return Page();
        }

        [BindProperty]
        public Movie Movie { get; set; }

        // To protect from overposting attacks, see https://aka.ms/RazorPagesCRUD
        public async Task<IActionResult> OnPostAsync()
        {
            Flex.Email.Library.SMTPType email = new Flex.Email.Library.SMTPType();
            if (!ModelState.IsValid)
            {
                return Page();
            }

            _context.Movie.Add(Movie);
            await _context.SaveChangesAsync();            
            return RedirectToPage("./Index");
        }
    }
}
