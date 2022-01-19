using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using BoxOfficeMoive.Models;

namespace BoxOfficeMovie.Data
{
    public class BoxOfficeMovieContext : DbContext
    {
        public BoxOfficeMovieContext (DbContextOptions<BoxOfficeMovieContext> options)
            : base(options)
        {
        }

        public DbSet<BoxOfficeMoive.Models.Movie> Movie { get; set; }
    }
}
