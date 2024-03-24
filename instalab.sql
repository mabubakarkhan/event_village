-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2022 at 12:55 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `instalab`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`) VALUES
(1, 'admin', '4ba674d85fbee92042e7d76e61145904');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL,
  `title` varchar(75) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `short` varchar(255) NOT NULL,
  `detail` longtext NOT NULL,
  `image` varchar(40) NOT NULL,
  `at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `title`, `slug`, `short`, `detail`, `image`, `at`, `updated_at`, `updated_by`, `meta_title`, `meta_key`, `meta_desc`) VALUES
(1, 'First Blog', 'first-blog', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem alias neque amet, delectus quaerat, nisi impedit voluptate corrupti aut aspernatur dolorem harum, iste tenetur nihil aliquid cumque ad repellendus nemo.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem alias neque amet, delectus quaerat, nisi impedit voluptate corrupti aut aspernatur dolorem harum, iste tenetur nihil aliquid cumque ad repellendus nemo.Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem alias neque amet, delectus quaerat, nisi impedit voluptate corrupti aut aspernatur dolorem harum, iste tenetur nihil aliquid cumque ad repellendus nemo.Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem alias neque amet, delectus quaerat, nisi impedit voluptate corrupti aut aspernatur dolorem harum, iste tenetur nihil aliquid cumque ad repellendus nemo.Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem alias neque amet, delectus quaerat, nisi impedit voluptate corrupti aut aspernatur dolorem harum, iste tenetur nihil aliquid cumque ad repellendus nemo.Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem alias neque amet, delectus quaerat, nisi impedit voluptate corrupti aut aspernatur dolorem harum, iste tenetur nihil aliquid cumque ad repellendus nemo.Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem alias neque amet, delectus quaerat, nisi impedit voluptate corrupti aut aspernatur dolorem harum, iste tenetur nihil aliquid cumque ad repellendus nemo.Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem alias neque amet, delectus quaerat, nisi impedit voluptate corrupti aut aspernatur dolorem harum, iste tenetur nihil aliquid cumque ad repellendus nemo.', '06a66baca4864037497b89aef987badb.jpg', '2021-10-18 13:01:05', '2021-10-18 13:01:05', 0, 'First Blog', 'First Blog', 'First Blog'),
(2, 'Second Blog Post', 'second-post', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem alias neque amet, delectus quaerat, nisi impedit voluptate corrupti aut aspernatur dolorem harum, iste tenetur nihil aliquid cumque ad repellendus nemo.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem alias neque amet, delectus quaerat, nisi impedit voluptate corrupti aut aspernatur dolorem harum, iste tenetur nihil aliquid cumque ad repellendus nemo.Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem alias neque amet, delectus quaerat, nisi impedit voluptate corrupti aut aspernatur dolorem harum, iste tenetur nihil aliquid cumque ad repellendus nemo.Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem alias neque amet, delectus quaerat, nisi impedit voluptate corrupti aut aspernatur dolorem harum, iste tenetur nihil aliquid cumque ad repellendus nemo.Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem alias neque amet, delectus quaerat, nisi impedit voluptate corrupti aut aspernatur dolorem harum, iste tenetur nihil aliquid cumque ad repellendus nemo.Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem alias neque amet, delectus quaerat, nisi impedit voluptate corrupti aut aspernatur dolorem harum, iste tenetur nihil aliquid cumque ad repellendus nemo.Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem alias neque amet, delectus quaerat, nisi impedit voluptate corrupti aut aspernatur dolorem harum, iste tenetur nihil aliquid cumque ad repellendus nemo.', '06a66baca4864037497b89aef987badb.jpg', '2021-10-18 13:01:48', '2021-10-18 13:01:48', 0, 'Second Blog Post', 'Second Blog Post', 'Second Blog Post'),
(3, 'Third Post', 'third-post', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem alias neque amet, delectus quaerat, nisi impedit voluptate corrupti aut aspernatur dolorem harum, iste tenetur nihil aliquid cumque ad repellendus nemo.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem alias neque amet, delectus quaerat, nisi impedit voluptate corrupti aut aspernatur dolorem harum, iste tenetur nihil aliquid cumque ad repellendus nemo.Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem alias neque amet, delectus quaerat, nisi impedit voluptate corrupti aut aspernatur dolorem harum, iste tenetur nihil aliquid cumque ad repellendus nemo.Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem alias neque amet, delectus quaerat, nisi impedit voluptate corrupti aut aspernatur dolorem harum, iste tenetur nihil aliquid cumque ad repellendus nemo.', '06a66baca4864037497b89aef987badb.jpg', '2021-10-18 13:02:20', '2021-10-18 13:02:20', 0, 'Third Post', 'Third Post', 'Third Post');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `slug` varchar(50) NOT NULL DEFAULT '',
  `detail` text NOT NULL,
  `about` text NOT NULL,
  `image` varchar(40) DEFAULT '',
  `meta_title` varchar(100) NOT NULL DEFAULT '',
  `meta_key` varchar(200) NOT NULL DEFAULT '',
  `meta_desc` varchar(255) NOT NULL DEFAULT '',
  `at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('active','inactive') DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `parent`, `title`, `slug`, `detail`, `about`, `image`, `meta_title`, `meta_key`, `meta_desc`, `at`, `updated_at`, `status`) VALUES
(1, 1, 'Animal Dander Allergy Tests', 'animal-dander', '<span style="color: rgb(51, 51, 51); font-family: Karla, sans-serif;">In the United States, 30% of individuals are allergic to pets. Pet allergies are commonly assumed to be caused by hair and fur, but they are caused by a protein found in animal skin cells, saliva, and urine, all of which cause us to sneeze.&nbsp;</span>', '<p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Did you know that&nbsp;<a href="https://www.filtrete.com/3m/en_us/filtrete/home-tips/full-story/~/7-suprising-facts-about-pet-allergies/?storyid=974e37a7-71ff-464c-969c-9539d365ce49" target="_blank" style="color: rgb(17, 88, 154);">30% of Americans</a>&nbsp;are allergic to animals? With such a large percentage of pet allergies, you\'d think that there wouldn\'t be so many misconceptions about animal pet dander.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">We are here to set the facts straight about allergic reactions, pet dander, and pet allergy tests.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Keep reading to learn more!</p><h3 style="margin: 20px 0px 10px; font-family: Karla, sans-serif; font-weight: 600; text-rendering: optimizelegibility; font-size: 24.5px; line-height: 24.5px; color: rgb(17, 88, 154);">What are Pet Allergies?</h3><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Pet allergies are often associated with the hair and fur that make our fluffy friends so adorable. This is not the case! Pet allergies are a reaction due to animal skin cells, saliva, and urine, which&nbsp;contain a specific protein that causes us to sniffle.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Dead flakes of skin called dander cause most allergic reactions. You can have allergic reactions to all sorts of animals, but cats and dogs are the most common, most likely because they are the most common animals we interact with.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;"><a href="https://primaryimmune.org/immune-system-and-primary-immunodeficiency?gclid=cjwkcajwgviibhbkeiwa10d2j-njbnyjb5wzt3ezcxoz7c5wav9jwyv3cey3tbhvke-9iisphgooybocxs8qavd_bwe" target="_blank" style="color: rgb(17, 88, 154);">Our immune system</a>&nbsp;plays a critical role in keeping us healthy and alive. Its job is to find and fight foreign substances. These substances can include viruses, bacteria, or small particles such as dead skin cells, dust, or hair.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">An allergic reaction is when an immune system reacts to harmless particles such as animal dander. As the immune system fights these particles, your body starts to exhibit&nbsp;symptoms&nbsp;that are similar to colds and other viruses.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Animal allergies can get worse with frequent exposure. So if you suspect that you have an animal dander allergy, make sure you take a pet allergy test to confirm.&nbsp;</p><h3 style="margin: 20px 0px 10px; font-family: Karla, sans-serif; font-weight: 600; text-rendering: optimizelegibility; font-size: 24.5px; line-height: 24.5px; color: rgb(17, 88, 154);">Risk Factors for Animal Dander Allergy</h3><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Many signs and symptoms are minor and simply annoying when it comes to animal allergic reactions. However, there are some major risk factors if the allergic reaction is severe.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">The reaction can include anything from a runny nose to sneezing, to more severe reactions like difficulty breathing, chest tightness, audible wheezing, or trouble sleeping caused by shortness of breath. When you are experiencing these symptoms, remove yourself from the situation and follow up with a doctor.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">You can also develop a sinus infection or asthma if you are continuously exposed to the animal you are allergic to.&nbsp;</p><h3 style="margin: 20px 0px 10px; font-family: Karla, sans-serif; font-weight: 600; text-rendering: optimizelegibility; font-size: 24.5px; line-height: 24.5px; color: rgb(17, 88, 154);">What Are the Signs and Symptoms of Pet Allergies?</h3><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Most allergic reactions are caused by the dander landing on your eyes and nose. When you are allergic, these areas will swell and itch when you are in close proximity to the animal you are allergic to.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Often times the dead skin cells, or dander, are small enough to enter the lungs. As a result, those with a history of asthma or sensitive lungs can experience severe breathing problems. In addition, these problems can lead to a severe allergic reaction if not managed properly.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Animal allergies do not only affect the respiratory system. They can also affect your skin. This is called allergic dermatitis, which is an immune reaction causing inflammation.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">These symptoms can include hives, eczema, and itchy skin.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">As mentioned before, pets are not the only cause of allergic reactions. Many people are allergic to different types of animals. We may not even know which animals since we rarely come in contact with them. The symptoms are the same, however.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">So, if you are visiting a friend\'s farm and suddenly start sneezing and coughing, you might be allergic to the cattle, ducks, or mice that live in the barn.&nbsp;</p><h3 style="margin: 20px 0px 10px; font-family: Karla, sans-serif; font-weight: 600; text-rendering: optimizelegibility; font-size: 24.5px; line-height: 24.5px; color: rgb(17, 88, 154);">How is Animal Dander Allergy Diagnosed?</h3><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">The doctor will go over your symptoms, medical history, and conduct a physical examination to determine whether you are allergic to certain animals. When you visit the doctor, they will also order several lab tests to confirm the diagnosis.</p><h3 style="margin: 20px 0px 10px; font-family: Karla, sans-serif; font-weight: 600; text-rendering: optimizelegibility; font-size: 24.5px; line-height: 24.5px; color: rgb(17, 88, 154);">What Are the Different Types of Pet Allergy Tests?</h3><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Since the immune system fights harmful and harmless particles in a similar manner, it is important to confirm what it is fighting.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">That is why pet allergy tests are crucial to determining what is ailing us. The doctor will order several tests, including&nbsp;<a href="https://www.ultalabtests.com/testing/search?itemname=ige" target="_blank" style="color: rgb(17, 88, 154);">blood tests (IgE)</a>, intradermal skin tests, or in some cases, usually with&nbsp;allergic dermatitis, patch tests.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">An IgE test is an allergen blood test collected by a phlebotomist at a patient service center and sent to a national testing lab. At Ulta Lab Tests, we&nbsp;<a href="https://www.ultalabtests.com/testing/search?itemname=dander" target="_blank" style="color: rgb(17, 88, 154);">offer several IgE tests</a>&nbsp;that are accurate and affordable, and you don’t need health insurance or a doctor’s referral to order them.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">We offer 100\'s of allergy tests, including the following animal allergy tests.</p><ul style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;"><li>Canary Bird Feathers (e201) IgE</li><li>Cat Dander (e1) IgE</li><li>Chicken Feathers (e85) IgE</li><li>Cow Dander (e4) IgE</li><li>Dog Danger (e5) IgE</li><li>Duck Feathers (e86) IgE</li><li>Ferret Epithelium (e217) IgE</li><li>Finch Feathers (re214) IgE</li><li>Gerbil (e209) IgE</li><li>Goat Epithelia (e80) IgE</li><li>Goose Feathers (e70) IgE</li><li>Hamster Epithelia (e84) IgE</li><li>Horse Dander (e88) IgE</li><li>Parrot/Parakeet Feathers (e78) IgE</li><li>Pigeon Feathers (e215) IgE</li><li>Rat (e87) IgE</li><li>Sheep Epithelia (e81) IgE</li><li>Swine Epithelia (e83) IgE</li><li>Turkey Feathers (e89) IgE</li></ul><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">With&nbsp;an intradermal test, the doctor or nurse will inject a small amount of the suspected allergen under your skin. If the area swells up and becomes inflamed, you are likely allergic to that specific animal. A doctor may still suspect an allergy even if the skin does not swell.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Lastly, a patch test is used when a skin allergy is suspected. For example, if your new kitten is causing rashes and itchy skin, you may have allergic dermatitis. Instead of injecting the skin as with the intradermal test, the doctor will place a tiny amount of allergen on your skin. If you are allergic, you will develop a rash in that area.</p><h3 style="margin: 20px 0px 10px; font-family: Karla, sans-serif; font-weight: 600; text-rendering: optimizelegibility; font-size: 24.5px; line-height: 24.5px; color: rgb(17, 88, 154);">Are You Allergic to Animal Dander?</h3><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Allergies are no fun. Whether you are allergic to pets, cattle, or other fluffy friends, allergies are frustrating. If you suspect that you are allergic, don\'t hesitate to order a pet test allergy.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Are you interested in more lab tests that are secure and confidential, affordable, and don\'t need an insurance referral?&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Ulta Lab Tests offers highly accurate and reliable tests with a 100% satisfaction guarantee so that you can make informed decisions about your health.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Order your pet allergy lab test today, and your results will be provided to you securely and confidentially online in 24 to 48 hours for most tests.&nbsp;<a href="https://www.ultalabtests.com/testing/search" target="_blank" style="color: rgb(17, 88, 154);">Take control of your health</a>&nbsp;today with Ulta Lab Tests.&nbsp;</p>', 'd810eb77231d2b99b6174e5ac000fc1d.png', 'Animal Dander Allergy Tests', 'Animal Dander Allergy Tests', 'Animal Dander Allergy Tests', '2022-03-28 09:46:57', '2022-03-28 09:46:57', 'active'),
(2, 1, 'Cat Allergy Test', 'cat-allergy-test', '<p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Cat allergy testing is the best approach to determining what\'s wrong if you have recurrent rhinitis symptoms and suspect your pet is to blame.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">When the body reacts to a foreign substance, it is called an allergic response. The immune system attacks the chemical, which defends the body from germs and poisons. An allergic response occurs when the immune system overreacts to an innocuous chemical.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">An allergic response to cats can arise when a person comes into touch with a cat or breaths in cat dander (dead flakes of animal skin). Dander from cats may be found in clothing, air, and furniture, and bedding.</p>', '<p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Owning a cat&nbsp;&nbsp;If you find yourself sneezing every time you are around a cat, you may be allergic. All the benefits&nbsp;of owning a cat won\'t do you any good if you have itchy and watery eyes.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">With cat allergy testing, you can know for certain if your reactions are from cats or something else. Here is everything you need to know about cat allergies and the tests used to diagnose and monitor them.&nbsp;</p><h3 style="margin: 20px 0px 10px; font-family: Karla, sans-serif; font-weight: 600; text-rendering: optimizelegibility; font-size: 24.5px; line-height: 24.5px; color: rgb(17, 88, 154);">What Is a Cat Allergy?</h3><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">An allergic reaction happens when the body responds to a foreign substance. The immune system, which protects the body from bacteria and toxins, attacks the substance. When the immune system overreacts to a harmless substance, this is an allergic reaction.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Allergic reactions to cats occur when someone comes in contact with a cat or breathes in cat dander, which is dead flakes of animal skin. Cat dander can be everywhere; carried in clothes, in the air, or settled on furniture and bedding.</p><h3 style="margin: 20px 0px 10px; font-family: Karla, sans-serif; font-weight: 600; text-rendering: optimizelegibility; font-size: 24.5px; line-height: 24.5px; color: rgb(17, 88, 154);">Risk Factors for Cat Allergies</h3><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Most cat allergies cause a runny nose and watery eyes, but more severe reactions can cause concern. If you have respiratory issues or conditions like asthma, allergic reactions can&nbsp;In fact, about 30% of those with asthma can have a severe attack when exposed to cat dander.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Those who have asthma may experience difficulty breathing, wheezing, or tightness of the chest. Even those without asthma or other respiratory conditions can experience acute symptoms such as complete blockage of the nasal passages.&nbsp;</p><h3 style="margin: 20px 0px 10px; font-family: Karla, sans-serif; font-weight: 600; text-rendering: optimizelegibility; font-size: 24.5px; line-height: 24.5px; color: rgb(17, 88, 154);">Causes of Cat Allergies</h3><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">What causes a cat allergy? Genetics does play a part in having pet allergies. If someone in your family is allergic to cats, the odds are that you could be allergic as well. Roughly 10% of Americans have a pet allergy. Cat allergies are twice as common as dog allergies.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Folks who are allergic to cats have an oversensitive immune system. The system mistakes an allergen for something harmful and attacks it the same way it would a virus. Symptoms can manifest after exposure to hair, saliva, urine, or cat dander.&nbsp;</p><h3 style="margin: 20px 0px 10px; font-family: Karla, sans-serif; font-weight: 600; text-rendering: optimizelegibility; font-size: 24.5px; line-height: 24.5px; color: rgb(17, 88, 154);">What Are the Signs and Symptoms of a Cat Allergy?</h3><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Many symptoms of cat allergies&nbsp;can resemble the allergic rhinitis symptoms of a common cold. If the symptoms persist for several weeks, you could have a cat allergy. The only way to know for certain is to get a cat allergy test from a trusted allergist or lab.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Allergy symptoms will appear shortly after you\'ve been exposed to cat allergens. In some cases, the symptoms may not appear for several hours if you\'ve been exposed to a lower level of allergen.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">An allergic reaction can cause swelling of the membranes around the eyes and nose, a rash on the neck or face, or coughing and wheezing if the dander was breathed deeply into the lungs.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Other common symptoms include:</p><ul style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;"><li>Itchy, red, or watery eyes</li><li>Itchy nose</li><li>Sneezing</li><li>Runny nose</li><li>Nasal congestion</li><li>Nasal pressure</li></ul><h3 style="margin: 20px 0px 10px; font-family: Karla, sans-serif; font-weight: 600; text-rendering: optimizelegibility; font-size: 24.5px; line-height: 24.5px; color: rgb(17, 88, 154);">How Is a Cat Allergy Diagnosed?</h3><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">The timing of symptoms can be an indication that you are allergic to cats. If you\'ve been around cats and suddenly find yourself sneezing with watery eyes, it\'s a good bet that you have an allergy. If your symptoms and exposure don\'t make an obvious correlation, the best way to know for certain is through a medical evaluation.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Following a brief history and examination, your doctor may decide to conduct some tests to determine whether you are allergic to cats. It could be that you are allergic to something different, like dust mites or mold.&nbsp;</p><h3 style="margin: 20px 0px 10px; font-family: Karla, sans-serif; font-weight: 600; text-rendering: optimizelegibility; font-size: 24.5px; line-height: 24.5px; color: rgb(17, 88, 154);">The Lab Tests to Screen, Diagnose, and Monitor Cat Allergies</h3><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">What testing is done for cat allergies? There are two ways to test for any allergy: skin tests and blood tests. These tests&nbsp;like the information you can use to make important decisions about your health.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;"><strong style="font-weight: bold;">Skin Prick Test</strong></p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">The skin prick test is conducted in a doctor\'s office or lab to monitor the results. The doctor will prick the skin\'s surface, usually on the forearm or the back, and then place a small amount of allergen on the spot. Typically the doctor will test for several allergens at once and may number the pricks to keep track of allergens.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">If a spot turns red or swollen after about 15-20 minutes, you are allergic to that particular substance. The skin will return to normal after about 30 minutes or so.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;"><strong style="font-weight: bold;">Intradermal Skin Testing</strong></p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">With intradermal testing, potential allergens are injected under the skin, usually of the forearm. Red, itchy bumps indicate an allergic reaction.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">The intradermal test is better at showing a positive result for a potential allergy. However, it can also create more false-positive results for allergies, showing positive results for an allergy that doesn\'t exist.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;"><strong style="font-weight: bold;">Blood Test</strong></p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">For some folks with skin conditions or very young children, a skin test isn\'t possible. In these cases,</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">IgE (immunoglobulin E) is part of the body\'s immune system, and a blood test will measure levels of IgE antibodies in the blood. These antibodies are present when an allergic reaction is detected.&nbsp;</p><h3 style="margin: 20px 0px 10px; font-family: Karla, sans-serif; font-weight: 600; text-rendering: optimizelegibility; font-size: 24.5px; line-height: 24.5px; color: rgb(17, 88, 154);">Frequently Asked Questions About a Cat Allergy and Lab Testing for a Cat Allergy</h3><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Is allergy testing safe?</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">The short answer is "absolutely." Blood testing is quite routine.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">At what age can some someone have allergy testing?</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Allergy testing can be done at any age.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Does blood allergy testing hurt?</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Other than the mild prick of the needle used to draw your blood, blood testing does not hurt.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Will everyone with a cat allergy need shots?</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Allergy injection therapy is not required for everyone with an allergy, but it is the only treatment that produces long-term benefits. The shots change how the immune system handles allergens.&nbsp;</p><h3 style="margin: 20px 0px 10px; font-family: Karla, sans-serif; font-weight: 600; text-rendering: optimizelegibility; font-size: 24.5px; line-height: 24.5px; color: rgb(17, 88, 154);">Cat Allergy Testing</h3><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Cat allergies can come between you and a loving relationship with a pet. Knowing for sure if you have a cat allergy can help you take charge of your health. Ulta Lab provides&nbsp;cat allergy testing&nbsp;that is highly accurate and reliable.&nbsp;</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Ulta Lab tests offer numerous benefits like:</p><ul style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;"><li>Secure and confidential results within 24-48 hours of most tests</li><li>No health insurance required</li><li>No physician referral required</li><li>Affordable prices</li><li>100% satisfaction guaranteed</li></ul>', '8a11199bb2326239efd4b340438aad5f.png', 'Cat Allergy Test', 'Cat Allergy Test', 'Cat Allergy Test', '2022-03-28 10:06:58', '2022-03-28 10:06:58', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE `contact_form` (
  `contact_form_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `message` text NOT NULL,
  `at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('new','seen') NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `newsletter_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `detail` longtext NOT NULL,
  `image` varchar(40) NOT NULL,
  `at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `meta_title` varchar(255) NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`page_id`, `title`, `detail`, `image`, `at`, `updated_at`, `meta_title`, `meta_key`, `meta_desc`) VALUES
(1, 'Home', '', '', '2021-10-04 13:15:56', '2021-10-04 13:15:56', 'ovalldull', 'ovalldull', 'ovalldull'),
(2, 'About Us', 'Hello World!', '243b35b1026f83a016dd147a126cb169.jpg', '2021-10-04 13:15:56', '2021-10-04 14:12:31', 'About Ovalldull', 'About Ovalldull', 'About Ovalldull'),
(3, 'Privacy Policy', 'Privacy Policy', '', '2021-10-04 13:16:15', '2021-10-04 13:17:10', 'Privacy Policy', 'Privacy Policy', 'Privacy Policy'),
(4, 'Return Policy', 'Return Policy', '', '2021-10-04 13:16:41', '2021-10-04 13:16:41', 'Return Policy', 'Return Policy', 'Return Policy'),
(5, 'Contact Us', '', '', '2021-10-04 13:17:22', '2021-10-04 13:17:22', 'Contact Us', 'Contact Us', 'Contact Us');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `image` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `name`, `country`, `msg`, `image`) VALUES
(1, 'M AB Khan', 'Pakistan', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Distinctio eius assumenda mollitia eos aliquid laudantium suscipit? Laudantium quidem neque, similique perferendis, recusandae qui error mollitia reiciendis in nam numquam ut.', '25aefe43dda72900559d54fbc5b5f8c6.jpg'),
(2, 'Ahsan', 'UAE', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Distinctio eius assumenda mollitia eos aliquid laudantium suscipit? Laudantium quidem neque, similique perferendis, recusandae qui error mollitia reiciendis in nam numquam ut.', 'f1871d036b6c76896c624083c52a826c.jpg'),
(3, 'Naveed Alam', 'UK', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Distinctio eius assumenda mollitia eos aliquid laudantium suscipit? Laudantium quidem neque, similique perferendis, recusandae qui error mollitia reiciendis in nam numquam ut.', '9203aa055ebfe1456d14a5c3010c567b.jpg'),
(4, 'Anees Akbar', 'USA', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Distinctio eius assumenda mollitia eos aliquid laudantium suscipit? Laudantium quidem neque, similique perferendis, recusandae qui error mollitia reiciendis in nam numquam ut.', '59bae84c29f184c9ecf212d9cf50318e.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `facebook_link` varchar(100) NOT NULL,
  `instagram_link` varchar(100) NOT NULL,
  `google_link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `address`, `phone`, `email`, `facebook_link`, `instagram_link`, `google_link`) VALUES
(1, 'AMZ address, lahore, pakistan', '+92 333 123 4567', 'info@domian.com', 'javascript://', 'javascript://', 'javascript://');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `image` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `image`) VALUES
(1, '2c63f7ce8bb54c641eadf5158a469403.jpg'),
(2, 'be7dfbc798932f74e48b0b50a985deb5.jpg'),
(3, '2eeed241111921ac981c5e6cb6b2f3b0.jpg'),
(4, '4dc2977ec6642d64a3a7fed6e70a7f99.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `sub_category_id` int(11) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `super_category_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `slug` varchar(50) NOT NULL DEFAULT '',
  `detail` text NOT NULL,
  `suggested_items` text NOT NULL,
  `image` varchar(40) DEFAULT '',
  `meta_title` varchar(100) NOT NULL DEFAULT '',
  `meta_key` varchar(200) NOT NULL DEFAULT '',
  `meta_desc` varchar(255) NOT NULL DEFAULT '',
  `at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('active','inactive') DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`sub_category_id`, `parent`, `super_category_id`, `title`, `slug`, `detail`, `suggested_items`, `image`, `meta_title`, `meta_key`, `meta_desc`, `at`, `updated_at`, `status`) VALUES
(1, 1, 1, 'Cat Dander (e1) IgE', 'cat-dander-Ige', '<span style="color: rgb(51, 51, 51); font-family: Karla, sans-serif;">The following is a list of what is included in the item above. Click the test(s) below to view what biomarkers are measured along with an explanation of what the biomarker is measuring.</span>', '<p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">The following value priced panels include the tests you have ordered above as well as additional tests that may assist you in monitoring your wellness</p>', '', 'Cat Dander (e1) IgE', 'Cat Dander (e1) IgE', 'Cat Dander (e1) IgE', '2022-04-02 12:33:00', '2022-04-02 12:33:00', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `super_category`
--

CREATE TABLE `super_category` (
  `super_category_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `slug` varchar(50) NOT NULL DEFAULT '',
  `image` varchar(40) NOT NULL DEFAULT '',
  `detail` text NOT NULL,
  `about` text NOT NULL,
  `meta_title` varchar(100) NOT NULL DEFAULT '',
  `meta_key` varchar(200) NOT NULL DEFAULT '',
  `meta_desc` varchar(255) NOT NULL DEFAULT '',
  `at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('active','inactive') DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `super_category`
--

INSERT INTO `super_category` (`super_category_id`, `title`, `slug`, `image`, `detail`, `about`, `meta_title`, `meta_key`, `meta_desc`, `at`, `updated_at`, `status`) VALUES
(1, 'Allergy Testing', 'allergy-testing', '6804d1426c45ed11c0022993973e6585.png', '<span style="color: rgb(51, 51, 51); font-family: Karla, sans-serif;">More than 50 million people in the United States are affected by allergies. Allergies occur when your immune system, the body’s natural defense, reacts to a naturally harmless substance.&nbsp;</span>', '<p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">According to the&nbsp;&nbsp;American College of Allergy, Asthma, and Immunology, more than 50 million people in the United States are affected by allergies. These reactions range from seasonal allergies to hay fever, asthma, and food allergies.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Allergy testing is widely used to diagnose allergies to specific substances. Information from these tests may help a doctor develop a treatment plan that includes medication, avoidance methods, or immunotherapy (allergy shots).</p><h3 style="margin: 20px 0px 10px; font-family: Karla, sans-serif; font-weight: 600; text-rendering: optimizelegibility; font-size: 24.5px; line-height: 24.5px; color: rgb(17, 88, 154);">What Is an Allergy?</h3><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Allergies occur when your immune system, the body’s natural defense, reacts to a naturally harmless substance. These substances that cause a reaction are called allergens, which are divided into three primary types:</p><ul style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;"><li><strong style="font-weight: bold;">Inhaled allergens:</strong>&nbsp;This type of allergen affects your body when it comes into contact with the membranes of the nostrils, throat, or lungs. The most common example of an inhaled allergen is pollen.</li><li><strong style="font-weight: bold;">Contact allergens:</strong>&nbsp;These allergens produce a reaction when they come in contact with your skin. For instance, poison ivy can cause rashes and itching.</li><li><strong style="font-weight: bold;">Ingested allergens:&nbsp;</strong>This type of allergen is present in certain foods, such as seafood, peanuts, and soy.</li></ul><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">An allergic reaction refers to how your body responds to an allergen. A chain of events usually occurs that can lead to allergic reactions.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">If you are exposed to a particular allergen that your immune system has identified as harmful even though it’s not, your immune system responds by producing allergic (IgE) antibodies.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">The role of allergic antibodies is to locate the allergens and help remove them. As a result, a chemical called histamine is released into your system and causes symptoms of allergies.</p><h3 style="margin: 20px 0px 10px; font-family: Karla, sans-serif; font-weight: 600; text-rendering: optimizelegibility; font-size: 24.5px; line-height: 24.5px; color: rgb(17, 88, 154);">What Are the Signs and Symptoms of Allergies?</h3><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Allergy symptoms can be classified as mild, moderate, or severe. Mild reactions include local symptoms that only affect a specific area of the body, such as rash, itchiness, runny nose, red and watery eyes, or hay fever.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Moderate reactions include symptoms that spread to other parts of the body. Symptoms may include hives, itchiness, swelling, or trouble breathing.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Some types of allergies can also trigger a severe, life-threatening reaction known as anaphylaxis. The body’s response to the allergen is sudden and affects your whole body.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Anaphylaxis may start with a severe rash and itchiness in your face or eyes. More serious symptoms appear within minutes, including shortness of breath, throat swelling, or vomiting.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Since anaphylaxis causes a drop in blood pressure, it may also cause lightheadedness or even loss of consciousness.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">It is best to get an allergy test if you have any of these symptoms. Allergy testing helps identify what you are allergic to.</p><h3 style="margin: 20px 0px 10px; font-family: Karla, sans-serif; font-weight: 600; text-rendering: optimizelegibility; font-size: 24.5px; line-height: 24.5px; color: rgb(17, 88, 154);">Types of Allergies</h3><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">A wide variety of substances can cause an allergic reaction. Depending on the substance involved, its allergy symptoms can affect your skin, airways, nasal passages, sinuses, and digestive system.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;"><strong style="font-weight: bold;">Pollen</strong></p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Seasonal allergic rhinitis, also called hay fever, is an allergic reaction to pollen. This type of nasal allergy usually changes with the seasons due to pollen from plants.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Allergic rhinitis can cause inflammation and swelling of the protective tissue of your eyes (conjunctiva) and the lining of your nose. Symptoms of this allergic disease include:</p><ul style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;"><li>Runny nose</li><li>Sneezing</li><li>Congestion (feeling stuffy)</li><li>Itchiness in the nose, eyes, or roof of the mouth</li><li>Red, watery, or swollen eyes (conjunctivitis)</li></ul><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Treatment options for allergic rhinitis include prescription and over-the-counter oral antihistamines, nasal antihistamines, nasal steroids, anti-leukotrienes, and nasal cromolyn.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Exposure to pollen can also cause allergic asthma symptoms, such as wheezing, coughing, shortness of breath, or chest tightness in some people.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;"><strong style="font-weight: bold;">Animal Dander</strong></p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Proteins secreted by sweat glands in an animal’s skin, which are shed in dander, can cause allergic reactions. These reactions may also be caused by the proteins in an animal’s saliva.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Treatment may include medications that control eye, nasal, and chest symptoms. If symptoms are not adequately controlled with medications or avoidance measures, immunotherapy may be recommended.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;"><strong style="font-weight: bold;">Dust Mites</strong></p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Dust mites are tiny organisms that grow in warm, humid areas. They live in dust and the fibers of household objects, such as carpets, mattresses, pillows, and upholstery.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">The allergy symptoms from dust mites are similar to those of pollen allergies. Treatment may include medications for eye, nasal, and chest symptoms. Immunotherapy may be recommended if medications and avoidance methods do not work for symptoms.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;"><strong style="font-weight: bold;">Insect Sting or Venom</strong></p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">A normal reaction when you get an insect sting includes pain, redness, and swelling around the sting site. You may also experience a large area of local reaction, such as swelling that extends beyond the sting site.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">An allergic reaction to an insect sting is the most serious reaction that needs immediate medical attention. Symptoms may include:</p><ul style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;"><li>Hives all over the body</li><li>Swelling of the throat, face, or mouth tissue</li><li>Difficulty swallowing or wheezing</li><li>Chest tightness or difficulty breathing</li><li>Rapid pulse</li><li>Dizziness or a sharp drop in the blood pressure</li></ul><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">A re-sting can cause a severe, life-threatening reaction. To prevent this, you should get a skin or blood test to confirm your venom allergy. Treatment options include epinephrine (adrenaline) or venom immunotherapy if an allergy is confirmed.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;"><strong style="font-weight: bold;">Certain Foods</strong></p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Some people can develop a specific antibody to a certain food. Allergic reactions occur within minutes of eating the food, and the symptoms can be serious.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">The most common food allergies in adults are peanuts, shellfish, and tree nuts. Meanwhile, children may have an allergic reaction to egg, milk, wheat, soy, shellfish, peanuts, and tree nuts.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Food allergies can cause the following symptoms:</p><ul style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;"><li>Itching</li><li>Tingling in the mouth</li><li>Hives</li><li>Swelling of the lips, tongue, throat, or face</li><li>Nausea or vomiting</li><li>Diarrhea</li><li>Difficulty breathing</li></ul><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;"><strong style="font-weight: bold;">Drug or Medication</strong></p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">A drug allergy is caused by an abnormal reaction of the immune system to a certain medication. Prescription, over-the-counter, or herbal medications are capable of inducing allergic reactions.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Drug allergies are different from a drug’s side effects, which are possible reactions listed on the label. These allergies are also not the same as drug toxicity that is caused by an overdose of medication.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Symptoms of a severe drug allergy often occur within an hour after taking the medication. Other reactions can also occur hours, days, or weeks later. Signs and symptoms include the following:</p><ul style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;"><li>Itchy skin</li><li>Rash</li><li>Hives</li><li>Facial swelling</li><li>Fever</li><li>Wheezing</li><li>Shortness of breath</li><li>Anaphylaxis</li></ul><h3 style="margin: 20px 0px 10px; font-family: Karla, sans-serif; font-weight: 600; text-rendering: optimizelegibility; font-size: 24.5px; line-height: 24.5px; color: rgb(17, 88, 154);">How Are Allergy Tests Performed?</h3><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Allergy testing often involves a skin test or a blood test. You may also need to go on an elimination diet to test for food allergies.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;"><strong style="font-weight: bold;">Skin Test</strong></p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Skin testing is done to determine numerous potential allergens, including airborne, contact, and food-related. There are three types of skin tests: prick, intradermal, and patch tests.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">The doctor will usually try a skin prick on the forearm first. A skin prick test, also called a scratch test, checks for immediate allergic reactions to various substances at once.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">In this test, the allergen is placed in liquid, then that liquid is placed on a section of the skin. The doctor uses lancets (needles) to lightly puncture the allergen into the skin’s surface.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">You will be closely observed to see your skin’s reaction to the foreign substance. If localized symptoms appear over the test site, you are allergic to that specific allergen.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">If the skin prick test is inconclusive, the doctor may order an intradermal skin test. This test involves using a needle to inject a tiny amount of allergen into the skin’s dermis layer. Again, the injection site is examined for signs of an allergic reaction.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">A patch test is another type of testing that uses adhesive patches containing allergens. These patches are placed on your skin to determine which substance is causing allergic skin inflammation or contact dermatitis.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">The patch test can detect delayed allergic reactions, which may take more than 24 hours to develop. After application, the patches will be reviewed before you can get the test results.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;"><strong style="font-weight: bold;">Blood Test</strong></p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Blood testing used to determine an allergic reaction is commonly called ImmunoCAP or radioallergosorbent test (RAST). This test measures the amount of&nbsp;<a href="https://www.ultalabtests.com/testing/search?itemname=allergy" target="_blank" style="color: rgb(17, 88, 154);">immunoglobulin E (IgE)</a>, which are allergy-causing antibodies in the bloodstream.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">After getting your blood drawn, the sample is tested in a medical laboratory to show sensitivity to potential allergens.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;"><strong style="font-weight: bold;">Elimination Diet</strong></p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">An elimination diet is helpful in&nbsp;<a href="https://www.ultalabtests.com/test/food-allergy-profile" target="_blank" style="color: rgb(17, 88, 154);">diagnosing food allergies</a>, which may be used in conjunction with blood or skin allergy testing. It involves removing certain foods from your diet and adding them back later on. Your reactions will help identify which foods you are intolerant of or sensitive to.</p><h3 style="margin: 20px 0px 10px; font-family: Karla, sans-serif; font-weight: 600; text-rendering: optimizelegibility; font-size: 24.5px; line-height: 24.5px; color: rgb(17, 88, 154);">Allergy Testing With Ulta Lab Tests</h3><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">At Ulta Lab Tests, our physician-approved laboratory testing services can help you determine potential allergens that are causing an allergic reaction. We provide insightful information and unique visualizations for you to easily understand your test results.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">Our testing process is simple, confidential, and convenient, and provides accurate, reliable results to help you monitor your health and wellness. You can obtain the results online before consulting with your doctor.</p><p style="margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Karla, sans-serif;">When you order your tests from us, you can easily get them done at one of our 2,100 approved patient service centers near you. We will send your test results online with maximum confidentiality. Then, you can review it or share it with your physician and healthcare provider. Take control of your health and order your allergy tests today.</p>', 'Allergy Testing', 'Allergy Testing', 'Allergy Testing', '2022-03-28 03:52:55', '2022-03-28 03:52:55', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `slug` (`slug`),
  ADD KEY `status` (`status`),
  ADD KEY `parent` (`parent`);

--
-- Indexes for table `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`contact_form_id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`newsletter_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`sub_category_id`),
  ADD KEY `slug` (`slug`),
  ADD KEY `status` (`status`),
  ADD KEY `parent` (`parent`),
  ADD KEY `super_category_id` (`super_category_id`);

--
-- Indexes for table `super_category`
--
ALTER TABLE `super_category`
  ADD PRIMARY KEY (`super_category_id`),
  ADD KEY `slug` (`slug`),
  ADD KEY `status` (`status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `contact_form_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `newsletter_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `sub_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `super_category`
--
ALTER TABLE `super_category`
  MODIFY `super_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
