package _05_netflix;

public class mynetflix {
public static void main(String[] args) {
	Movie one = new Movie("Star Wars", 9);
	Movie two = new Movie("Star Trek", 7);
	Movie three = new Movie("Cheaper by The Dozen", 8);
	Movie four = new Movie("Avengers Endgame", 10);
	Movie five = new Movie("Diary of a Wimpy Kid", 1);
	
	System.out.println(one.getTicketPrice());
	NetflixQueue play = new NetflixQueue();
	play.addMovie(one);
	play.addMovie(two);
	play.addMovie(three);
	play.addMovie(four);
	play.addMovie(five);
	play.sortMoviesByRating();
	play.printMovies();
	System.out.println(play.getBestMovie());
	System.out.println(play.getMovie(1));

	

}
}
