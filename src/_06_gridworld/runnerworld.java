package _06_gridworld;

import java.awt.Color;
import java.util.Random;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class runnerworld {
	public static void main(String[] args) {
		World one = new World();
		one.show();
		
		Location loc = new Location(5,5);
		Bug bug = new Bug();
		Flower flo = new Flower();
		
		Random ran = new Random();
		int number = ran.nextInt(9);
		int numbers = ran.nextInt(9);
		Location locs = new Location(number,numbers);
		Location locss = new Location(number,numbers-1);
		Location locsss = new Location(number,numbers+1);
		
		one.add(loc, bug);
		
		one.add(locs, bug);
		bug.setColor(Color.BLUE);
		bug.turn();
		
		one.add(locss, flo);
		one.add(locsss, flo);
		
		for(int i = 0; i < 96;i++) {
			one.add(one.getRandomEmptyLocation(), flo);
		}
				}

}
