import 'package:animate_do/animate_do.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:jfrg_movies_app/domain/domain.dart';
import 'package:flutter/material.dart';

class MoviesSlideshow extends StatelessWidget {
  final List<Movie> movies;
  const MoviesSlideshow({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return movies.isNotEmpty
        ? FadeIn(
            child: SizedBox(
              height: 200, // un poco más de alto para dar espacio al pagination
              width: double.infinity,
              child: ClipRect(
                child: Swiper(
                  scale: 0.9,
                  viewportFraction: 0.8,
                  autoplay: true,
                  autoplayDelay: 4000,
                  duration: 600,
                  pagination: SwiperPagination(
                    margin: const EdgeInsets.only(top: 10),
                    alignment: Alignment.bottomCenter,
                    builder: DotSwiperPaginationBuilder(
                      activeColor: colors.primary,
                      color: colors.secondary.withOpacity(0.4),
                      size: 5.0,
                      activeSize: 7.0,
                      space: 3.0,
                    ),
                  ),
                  itemCount: movies.length,
                  itemBuilder: (context, index) => _Slide(movie: movies[index]),
                ),
              ),
            ),
          )
        : const SizedBox();
  }
}

class _Slide extends StatelessWidget {
  final Movie movie;

  const _Slide({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: GestureDetector(
                child: Image.network(
                  movie.posterPath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
          ),

          //Titulo
          Text(
            movie.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
