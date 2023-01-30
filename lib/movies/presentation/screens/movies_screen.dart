import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/enums/enums.dart';
import '../../../core/managers/color_manager.dart';
import '../../../core/managers/size_manager.dart';
import '../../../core/utils/extensions.dart';
import '../blocs/movie_bloc.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
      ),
      body: BlocBuilder<MovieBloc, MovieState>(
        builder: (context, state) {
          if (state.getMoviesState == RequestState.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.getMoviesState == RequestState.error) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    state.getMoviesError,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: ColorManager.secondary,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  SizedBox(
                    height: context.screenHeight() * 0.01,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      context.read<MovieBloc>().add(MoviesFetchedEvent());
                    },
                    icon: const Icon(Icons.refresh),
                    label: const Text('Reload'),
                  ),
                ],
              ),
            );
          }

          return Visibility(
            visible: state.movies.isNotEmpty,
            replacement: Center(
              child: Text(
                'No Movies',
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: ColorManager.primary,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            child: GridView.builder(
              padding: const EdgeInsets.all(
                AppPadding.screenBodyPadding,
              ),
              itemCount: state.movies.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 3,
                crossAxisSpacing: 10.w,
                mainAxisSpacing: 10.h,
              ),
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(6.0),
                            topRight: Radius.circular(6.0),
                          ),
                          child: SizedBox(
                            width: context.screenWidth(),
                            child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl: state.movies[index].imageUrl,
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) {
                                return CircularProgressIndicator(
                                  value: downloadProgress.progress,
                                );
                              },
                              errorWidget: (context, url, error) {
                                return const Icon(Icons.error);
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50.h,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              state.movies[index].title,
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  ?.copyWith(
                                    color: ColorManager.primary,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
