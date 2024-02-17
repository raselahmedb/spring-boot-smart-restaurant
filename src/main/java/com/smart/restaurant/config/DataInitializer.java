package com.smart.restaurant.config;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;

import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

import com.smart.restaurant.model.Customer;
import com.smart.restaurant.model.MenuItem;
import com.smart.restaurant.model.Order;
import com.smart.restaurant.model.OrderLine;
import com.smart.restaurant.repository.CustomerRepository;
import com.smart.restaurant.repository.MenuItemRepository;
import com.smart.restaurant.service.OrderService;

import lombok.RequiredArgsConstructor;

@Component
@Configuration
@RequiredArgsConstructor
public class DataInitializer implements CommandLineRunner {

	private final MenuItemRepository menuItemRepository;
	private final CustomerRepository customerRepository;
	private final OrderService orderService;

	@Override
	public void run(String... args) {

		menuItemRepository.saveAll(initMenuItem());
		customerRepository.saveAll(initCustomer());
		
		long beforeTime = System.currentTimeMillis();
		initOrder().forEach(orderService::saveOrder);
		long afterTime = System.currentTimeMillis();
		System.out.println("order initial: " + (afterTime - beforeTime) + "ms");
	}

	
	List<Order> initOrder() {
		List<Order> orders = new ArrayList<>();
		Random random = new Random();

		LocalDate orderDate = LocalDate.now().minusDays(10);
		long menuItemId = 1L;

		for (int i = 0; i < 10; i++) {
			int randomOderCount = random.nextInt(1, 50);
			for (int j = 0; j < randomOderCount; j++) {
				int orderLineCounr = random.nextInt(1, 11);
				long customerId = random.nextLong(1, 11);
				List<OrderLine> orderLines = new ArrayList<>();
				long qty = random.nextLong(1, 11);
				for (int k = 0; k < orderLineCounr; k++) {
					menuItemId = random.nextLong(1, 35);
					orderLines.add(new OrderLine(new MenuItem(menuItemId, null, null, null, null), null,
							BigDecimal.valueOf(qty), null, null));
				}
				orders.add(new Order(new Customer(customerId, null, null, null, null, null), orderLines, null, null,
						orderDate));
			}

			orderDate = orderDate.plusDays(1);
		}

		// Generate a random number between 1 and 10 (inclusive)
		long customerId = random.nextLong(1, 10);
		long qty = random.nextLong(1, 10);
		List<OrderLine> orderLines = new ArrayList<>();
		orderLines.add(new OrderLine(new MenuItem(menuItemId, null, null, null, null), null, BigDecimal.valueOf(qty),
				null, null));
		orders.add(
				new Order(new Customer(customerId, null, null, null, null, null), orderLines, null, null, orderDate));
		return orders;
	}

	@Bean
	List<Customer> initCustomer() {
		return Arrays.asList(new Customer(1L, "Rasel Ahmed", "0001", "017000000000", "rasel@gmail.com", "Dhaka"),
				new Customer(2L, "Ariful Islam", "0002", "017000000001", "arif@gmail.com", "Dhaka"),
				new Customer(3L, "Aminul Islam", "0003", "017000000002", "aminul@gmail.com", "Dhaka"),
				new Customer(4L, "Arafat Rahman", "0004", "017000000004", "arafat@gmail.com", "Dhaka"),
				new Customer(5L, "Saad", "0054", "017000000005", "saad@gmail.com", "Dhaka"),
				new Customer(6L, "Junaid", "006", "017000000006", "junaid@gmail.com", "Dhaka"),
				new Customer(7L, "Danish", "007", "017000000007", "danish@gmail.com", "Dhaka"),
				new Customer(8L, "Sameer", "008", "017000000008", "sammer@gmail.com", "Dhaka"),
				new Customer(9L, "Maaz", "009", "017000000009", "maaz@gmail.com", "Dhaka"),
				new Customer(10L, "Haider", "010", "017000000010", "Haider@gmail.com", "Dhaka"));
	}

	@Bean
	List<MenuItem> initMenuItem() {
		return Arrays.asList(new MenuItem(1L, "Ghorer Khabar", "001",
				"Fine Quality Steamed Rice (Katari bhog/Nazirshal), served with Thick Daal, Mixed Vegetable Bhaji and choice of Chicken (Local) or Beef Bhuna.",
				BigDecimal.valueOf(425.00)),
				new MenuItem(2L, "Bhorta Bahar", "002",
						"Fine Quality Steamed Rice (Katari bhog/Nazirshal), served with Thick Daal and your choice of five Bhrota. Choose any five-Begun Bhorta, Aloo Bhorta, Daal Bhorta, Egg Bhorta, Chingri Bhorta, Shutki Bhorta, Mach Bhorta, Sheem Bhorta, Barbati Bhorta, Patal Bhorta, Tomato Bhorta.",
						BigDecimal.valueOf(400.00)),
				new MenuItem(3L, "Bhorta Bahar 2", "003",
						"Fine Quality Steamed Rice (Katari bhog/Nazirshal), served with Thick Daal and your choice of five Bhrota. Choose any five-Begun Bhorta, Aloo Bhorta, Daal Bhorta, Egg Bhorta, Chingri Bhorta, Shutki Bhorta, Mach Bhorta, Sheem Bhorta, Barbati Bhorta, Patal Bhorta, Tomato Bhorta.",
						BigDecimal.valueOf(420.00)),
				new MenuItem(4L, "Luchi Kabab", "004",
						"Luchi/Parata, Aloo Dum/ Daal Bhuna, served with Special Haadi Kabab and Onion Salad. This Delicious meal also includes Gajorer/Sujir Halwa.",
						BigDecimal.valueOf(450.00)),
				new MenuItem(5L, "Khichuri Khazana", "005",
						"Moog Daal er Bhuna Khichuri, Served with Begun Bhaja( Fried Brinjal), Mach Bhaja (Fish Fry), Egg Masala Omelette /Egg Bhuna and choice of Chicken (Local) or Beef Bhuna. This Menu comes with Salad, Caramel Pudding/ Roshogolla and Tea/Coffee.",
						BigDecimal.valueOf(425.00)),
				new MenuItem(6L, "Pulao Korma/Roast", "006",
						"Best Quality Kalijeera Rice Pulao served with Chicken Korma / Roast, Rui Bhaja, Mixed Vegetable. This Menu comes with Salad, Caramel Pudding/ Roshogolla and Tea/Coffee.",
						BigDecimal.valueOf(600.00)),
				new MenuItem(7L, "Pulao Gosht", "007",
						"Best Quality Kalijeera Rice Pulao served with Beef Bhuna / Jhal Gosht , Rui Bhaja, Mixed Vegetable. This Menu comes with Salad, Caramel Pudding/ Roshogolla and Tea/Coffee.",
						BigDecimal.valueOf(600.00)),
				new MenuItem(8L, "Morogh Pulao", "008",
						"Best Quality Kalijeera Rice Pulao cooked with local chicken served with Shammi Kabab Mixed Vegetable. This Menu comes with Salad, Caramel Pudding/ Roshogolla and Tea/Coffee.",
						BigDecimal.valueOf(600.00)),
				new MenuItem(9L, "Beef Tehari", "009",
						"Best Quality Kalijeera Rice Beef Tehari served with Aloo Keema Chop, Mixed Vegetable. This Menu comes with Salad, Caramel Pudding/ Roshogolla and Tea/Coffee.",
						BigDecimal.valueOf(600.00)),
				new MenuItem(10L, "Pulao Mutton Rezala", "010",
						"Best Quality Kalijeera Rice Pulao served with Mutton Rezala, Shammi Kabab, Mixed Vegetable. This Menu comes with Salad, Caramel Pudding/ Roshogolla and Tea/Coffee.",
						BigDecimal.valueOf(750.00)),
				// Add more MenuItems as needed
				new MenuItem(11L, "Kids Menu", "011",
						"Kid’s portion of Plain Pulao, chicken korma, Beef Chop served with French Fries. This Menu comes with vanilla ice cream.",
						BigDecimal.valueOf(350.00)),
				new MenuItem(12L, "BBQ Night", "012",
						"Luchi/Parata, Butter Chicken served with BBQ Chicken Tandoori/Beef Shikh Kabab a fresh from the barbecue. This menu comes with salad, Firni /Gurer Payesh and your choice of Canned Beverage.",
						BigDecimal.valueOf(750.00)),
				new MenuItem(13L, "Chapati", "013", null, BigDecimal.valueOf(25.00)),
				new MenuItem(3L, "Mach a Bhat a", "003",
						"Fine Quality Steamed Rice (Katari bhog/Nazirshal), served with Thick Daal, Mixed Vegetable Bhaji and choice of Rui/Katal/ Illish Bhaji or Bhuna.",
						BigDecimal.valueOf(400.00)),
				new MenuItem(14L, "Shami Kabab", "014", null, BigDecimal.valueOf(60.00)),
				new MenuItem(15L, "Aloor Chop", "015", null, BigDecimal.valueOf(50.00)),
				new MenuItem(16L, "Chicken bhuna", "016", null, BigDecimal.valueOf(125.00)),
				new MenuItem(17L, "Beef bhuna", "017", null, BigDecimal.valueOf(125.00)),
				new MenuItem(18L, "Egg Curry", "018", null, BigDecimal.valueOf(55.00)),
				new MenuItem(19L, "Egg Daal Curry", "019", null, BigDecimal.valueOf(70.00)),
				new MenuItem(20L, "Shutki", "020", null, BigDecimal.valueOf(55.00)),
				new MenuItem(21L, "Balachao", "021", null, BigDecimal.valueOf(50.00)),
				new MenuItem(22L, "Mixed Pickle", "022", null, BigDecimal.valueOf(50.00)),
				new MenuItem(23L, "Chutney of the season", "023", null, BigDecimal.valueOf(50.00)),
				new MenuItem(24L, "Onion, lemon and cucumber platter", "024", null, BigDecimal.valueOf(50.00)),
				new MenuItem(25L, "Tea", "025", null, BigDecimal.valueOf(20.00)),
				new MenuItem(26L, "Coffee", "026", null, BigDecimal.valueOf(30.00)),
				new MenuItem(27L, "Soft Drinks – Litre Bottle", "027", null, BigDecimal.valueOf(120.00)),
				new MenuItem(28L, "Soft Drinks – 250 ml can", "028", null, BigDecimal.valueOf(45.00)),
				new MenuItem(29L, "English Breakfast", "029",
						"Two Eggs any style with 2 Beef or Chicken Sausages, Hash Brown Potatoes or Baked Beans, 2 Toast, Butter, jam or marmalade Coffee or Tea.",
						BigDecimal.valueOf(320.00)),
				new MenuItem(30L, "Continental Menu", "030",
						"Juice, Bread Basket with a selection of six breads served with butter and jam, Coffee or Tea.",
						BigDecimal.valueOf(300.00)),
				new MenuItem(31L, "Bangladeshi Menu", "031",
						"Parata or Chapatti served with Mixed Vegetable or Aloo Dum, 1 Egg, Sujir Halwa, Coffee or Tea.",
						BigDecimal.valueOf(200.00)),
				new MenuItem(32L, "Cereal Menu", "032", "Cold cereal with Milk.", BigDecimal.valueOf(120.00)),
				new MenuItem(33L, "French Toast Menu", "033", "4 French Toast served with onion and tomato or syrup.",
						BigDecimal.valueOf(150.00)),
				new MenuItem(34L, "Two Fresh Eggs any style", "034", null, BigDecimal.valueOf(70.00)));
	}
}
