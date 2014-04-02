TukTuk
======
TukTuk is a responsive front-end framework that creates extensible sites easily.

* **CSS3 powered:** The premise is to use as much as possible the features of the latest CSS specification. Don't try to use Tuktuk in IE6.

* **Lightweight & fast:** You don't want to carry heavy stylesheets that only make for a slow loading site. Tuktuk is lightweight at just 9kb gzipped

* **Object Oriented CSS:** The purpose is to encourage code reuse plus faster and more efficient stylesheets that are easier to add to and maintain.

Getting Started
---------------
### Examples
Check out four examples of what you can do with tuktuk:
[Blog Page](http://tuktuk.tapquo.com/examples/blog.html)
[Landing Page](http://tuktuk.tapquo.com/examples/landing.html)
[Profile Page](http://tuktuk.tapquo.com/examples/profile.html)
[Web Application](http://tuktuk.tapquo.com/examples/app.html)


### GitHub
This is opensource, so feel free to fork this project to help us improve TukTuk. All source code is developed with CoffeeScript and Stylus.

### Licensing
TukTuk is licensed under GPLv3 licensed and a Commercial License for OEM uses. See [LICENSE](https://github.com/soyjavi/tuktuk/blob/master/LICENSE.md) for more information.

How to use
----------

#### Turn it up to 12 columns
The grid system of Tuktuk is divided horizontally into a series of 12 columns, and vertically into rows. 12 columns divide nicely into equal columns of two, three, four, or six columns.

	<div class="row margin-bottom">
    	<div class="column_1 radius bck light padding-top padding-bottom">1</div>
        <div class="column_1 radius bck light padding-top padding-bottom">1</div>
        <div class="column_1 radius bck light padding-top padding-bottom">1</div>
        <div class="column_1 radius bck light padding-top padding-bottom">1</div>
        <div class="column_1 radius bck light padding-top padding-bottom">1</div>
        <div class="column_1 radius bck light padding-top padding-bottom">1</div>
        <div class="column_1 radius bck light padding-top padding-bottom">1</div>
        <div class="column_1 radius bck light padding-top padding-bottom">1</div>
        <div class="column_1 radius bck light padding-top padding-bottom">1</div>
        <div class="column_1 radius bck light padding-top padding-bottom">1</div>
        <div class="column_1 radius bck light padding-top padding-bottom">1</div>
        <div class="column_1 radius bck light padding-top padding-bottom">1</div>
	</div>
	
	<div class="row margin-bottom">
    	<div class="column_4 radius bck light padding-top padding-bottom">4</div>
        <div class="column_4 radius bck light padding-top padding-bottom">4</div>
        <div class="column_4 radius bck light padding-top padding-bottom">4</div>
    </div>
    
	<div class="row margin-bottom">
    	<div class="column_4 radius bck light padding-top padding-bottom ">4</div>
        <div class="column_8 radius bck light padding-top padding-bottom">8</div>
    </div>
    <div class="row margin-bottom">
    	<div class="column_6 radius bck light padding-top padding-bottom">6</div>
        <div class="column_6 radius bck light padding-top padding-bottom">6</div>
    </div>
    
    <div class="row">
    	<div class="column_12 radius bck light padding-top padding-bottom">12</div>
    </div>

#### Offsetting columns
You have the option to offset a column, which should make life a little bit easier if you you need to add extra spacing between columns.

	<div class="row margin-bottom">
    	<div class="column_4 offset_4 radius bck color text color white padding-top padding-bottom">4 with 4 offset</div>
    </div>
	<div class="row margin-bottom">
    	<div class="column_3 offset_3 radius bck color text color white padding-top padding-bottom">3 with 3 offset</div>
    	<div class="column_3 offset_3 radius bck color text color white padding-top padding-bottom">3 with 3 offset</div>
    </div>
    <div class="row">
    	<div class="column_8 offset_4 radius bck color text color white padding-top padding-bottom">8 with 4 offset</div>
    </div>
    
#### Forms
Make forms look gorgeous regardless of device and browser
	
	<form id="form" name="form" class="margin-top">
   		<label>Label example</label>
        <input type="text" name="default" id="default">
            <!--
            <label>Label example</label>
            <input type="text" name="large" id="large" class="large" />
             -->
		<fieldset>
        	<label>Drop down:<small>Select option</small></label>
            <span class="select">
                <select>
                    <option value="1">HTML5 Jedi</option>
                    <option value="2">Two</option>
                    <option value="3">Three</option>
                </select>
            </span>
        </fieldset>

        <fieldset>
            <label>Required:<small>field</small></label>
            <input type="text" name="name" id="name" required="">
        </fieldset>

        <fieldset>
            <label>Feedback:<small>Comments here</small></label>
            <textarea></textarea>
        </fieldset>

        <fieldset>
            <label>Switches<small>Touch lover</small></label>
            <div data-control="checkbox">
                <input type="checkbox" value="None" id="prueba">
                <label for="prueba"></label>
            </div>
        </fieldset>

        <fieldset>
            <label>Radio<small>buttons</small></label>
            <input type="radio" name="radio1"><span>Yes</span>
            <input type="radio" name="radio2" disabled=""><span>No</span>
        </fieldset>

        <fieldset>
            <label>Checkbox:<small>Styled</small></label>
            <input type="checkbox" name="radio1"><span>One</span>
            <input type="checkbox" name="radio2"><span>Two</span>
        </fieldset>
	</form>

#### Buttons
Gallery of styles and sizes that will be enough to interact with your site.
	
	<div class="margin-top">
        <a href="#" class="button large">Large</a>
        <a href="#" class="button secondary">Normal</a>
        <a href="#" class="button success small">Small</a>
        <a href="#" class="button alert tiny">Tiny</a>
    </div>

    <div class="margin-top">
        <a href="#" class="button large"><span class="icon ok"></span>Large</a>
        <a href="#" class="button secondary"><span class="icon ok"></span>Normal</a>
        <a href="#" class="button success small"><span class="icon ok"></span>Small</a>
        <a href="#" class="button alert tiny"><span class="icon ok"></span>Tiny</a>
    </div>
    
    <div class="margin-top">
        <a href="#" class="button large icon ok"></a>
        <a href="#" class="button secondary icon ok"></a>
        <a href="#" class="button success small icon ok"></a>
        <a href="#" class="button alert tiny icon ok"></a>
    </div>
    
    <div class="margin-top">
        <a href="#" class="button anchor secondary"><span class="icon ok"></span>Anchor</a>
    </div>
    
##### Tables
Clean & Flat style for table elements such as TH, TD, odds...

	<table class="margin-top">
        <thead>
            <tr>
                <th>Item</th>
                <th>Category</th>
                <th>Version</th>
                <th><span class="right">Price</span></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>iPhone</td>
                <td>Mobile</td>
                <td>5</td>
                <td><span class="right">$ 699</span></td>
            </tr>
            <tr>
                <td>iPad Mini</td>
                <td>Tablet</td>
                <td>1</td>
                <td><span class="right">$ 399</span></td>
            </tr>
            <tr>
                <td>iPad</td>
                <td>Tablet</td>
                <td>4</td>
                <td><span class="right">$ 499</span></td>
            </tr>
            <tr>
                <td>Macbook Air 13"</td>
                <td>Laptop</td>
                <td>2</td>
                <td><span class="right">$ 1299</span></td>
            </tr>
            <tr>
                <td>Macbook Pro 15"</td>
                <td>Laptop</td>
                <td class="highlight">Retina</td>
                <td><span class="right">$ 2299</span></td>
            </tr>
        </tbody>
    </table>
    
### Typography
Discover how you can play with the style of any element using style inheritance.
##### Color
    <div class="offset_1 column_2">
        <h6 class="color white">.white</h6>
        <h6>.normal</h6>
        <h6 class="color theme">.theme</h6>
    </div>
##### Background   
    <div class="column_2">
        <h6 class="bck light">.light</h6>
        <h6 class="bck color">.color</h6>
        <h6 class="bck dark">.dark</h6>
        <h6 class="bck theme">.theme</h6>
    </div>
##### Text    
    <div class="column_2">
        <h6 class="text thin">thin</h6>
        <h6 class="text book">book</h6>
        <h6 class="text normal">normal</h6>
        <h6 class="text bold">bold</h6>
        <h6 class="text italic">italic</h6>
        <h6 class="text underline">underline</h6>
    </div>
##### Align    
    <div class="column_2">
        <h6 class="text left">left</h6>
        <h6 class="text right">right</h6>
        <h6 class="text center">center</h6>
        <h6 class="text justify">justify</h6>
    </div>
##### Headings     
    <div class="column_2">
        <h1 class="inline">H1</h1>
        <h2 class="inline">H2</h2>
        <h3 class="inline">H3</h3>
        <h4 class="inline">H4</h4>
        <h5 class="inline">H5</h5>
        <h6 class="inline">H6</h6>
    </div>
    
### Lists
If buttons are important, so are lists. Tuktuk comes with a group of styles easily usable.
#### Normal Bullets
    <ul>
        <li>Cras mattis consectetur purus sit amet fermentum.</li>
        <li>
            Donec ullamcorper nulla non metus auctor fringilla.
            <ul>
                <li>Aenean eu leo quam.</li>
                <li>Pellentesque ornare sem lacinia quam venenatis vestibulum.</li>
                <li>Nullam quis risus eget urna mollis ornare vel eu leo.</li>
            </ul>
        </li>
        <li>Maecenas sed diam eget risus varius blandit sit amet non magna.</li>
    </ul>
#### Numbered Bullets
    <ol class="square">
        <li>Cras mattis consectetur purus sit amet fermentum.</li>
        <li>
            Donec ullamcorper nulla non metus auctor fringilla.
            <ol>
                <li>Aenean eu leo quam.</li>
                <li>Pellentesque ornare sem lacinia quam venenatis vestibulum.</li>
                <li>Nullam quis risus eget urna mollis ornare vel eu leo.</li>
            </ol>
        </li>
        <li>Maecenas sed diam eget risus varius blandit sit amet non magna.</li>
    </ol>
#### Circle Bullets
    <ul class="circle">
        <li>Cras mattis consectetur purus sit amet fermentum.</li>
        <li>
            Donec ullamcorper nulla non metus auctor fringilla.
            <ul>
                <li>Aenean eu leo quam.</li>
                <li>Pellentesque ornare sem lacinia quam venenatis vestibulum.</li>
                <li>Nullam quis risus eget urna mollis ornare vel eu leo.</li>
            </ul>
        </li>
        <li>Maecenas sed diam eget risus varius blandit sit amet non magna.</li>
    </ul>
#### Squeare Bullets
    <ul class="square">
        <li>Cras mattis consectetur purus sit amet fermentum.</li>
        <li>
            Donec ullamcorper nulla non metus auctor fringilla.
            <ul>
                <li>Aenean eu leo quam.</li>
                <li>Pellentesque ornare sem lacinia quam venenatis vestibulum.</li>
                <li>Nullam quis risus eget urna mollis ornare vel eu leo.</li>
            </ul>
        </li>
        <li>Maecenas sed diam eget risus varius blandit sit amet non magna.</li>
    </ul>
    
### Show & Hide
There are times when you may need to only show something on a desktop and not on a tablet or phone or the other way around. TukTuk will do all the work for you with some extra classes to hide & show content.

    <div class="row text center devices">
        <div class="column_4">
            <span class="icon desktop show-screen"></span>
            <span class="icon desktop hide-screen" style="opacity:0.1;"></span>
        </div>
        <div class="column_4">
            <span class="icon tablet show-tablet"></span>
            <span class="icon tablet hide-tablet" style="opacity:0.1;"></span>
        </div>
        <div class="column_4">
            <span class="icon mobile-phone show-phone"></span>
            <span class="icon mobile-phone hide-phone" style="opacity:0.1;"></span>
        </div>
    </div>
    
### Navigation
Navigation menu that works both in a desktop and a mobile
	
	<section class="bck dark">
        <div class="row text center">
            <nav data-tuktuk="menu" class="column_12 padding text bold">
                <a href="#" class="active"><span class="icon camera"></span>Shots<small>(100)</small></a>
                <a href="#"><span class="icon heart"></span>Likes<small>(3)</small></a>
                <a href="#"><span class="icon group"></span>Following<small>(192)</small></a>
                <a href="#"><span class="icon star"></span>Debuts<small>(160)</small></a>
            </nav>
        </div>
    </section>
    
### Modals
Need popups for interact with the user, tuktuk puts you very easy. 

<strong>Remind: Dont forget to load the tuktuk javascript</strong>

	<script src="package/tuktuk.js"></script>
	 
#### Default
Button to trigger:

	<button data-tuktuk-modal="default_modal">Default</button>

Modal default template

    <div id="default_modal" data-tuktuk="modal" class="column_5 active">
        <header>
            <h4 class="text thin">Default modal window</h4>
        </header>
        <article>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus nihil aut sit incidunt amet modi dolores a sed.
        </article>
        <footer>
            <button data-modal="close" class="anchor"><span class="icon remove"></span>Close</button>
        </footer>
    </div>
    
<strong>Remind: active class makes modal visible</strong>

#### Styling Modal
Button to trigger:

	<button data-tuktuk-modal="big_modal">Styling modal</button>

Styled modal template:

    <div id="big_modal" data-tuktuk="modal" class="column_8 active">
        <header class="bck alert">
            <h4 class="text thin inline">Header with <strong>.bck .alert</strong> class</h4>
            <button data-modal="close" class="transparent small on-right inline icon remove"></button>
        </header>
        <article class="text big">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus nihil aut sit incidunt amet modi dolores a sed.</article>
        <footer>
            <button data-modal="close" class="button large secondary"><span class="icon ok"></span>Accept</button>
            <button data-modal="close" class="button  alert"><span class="icon remove"></span>Cancel</button>
        </footer>
    </div>
    
### Icons
Seize the @font-face feature to have a large repository of vectorized icons ready to use on your site or application.

    <div class="column_12">
        <span class="icon glass"></span>
        <span class="icon music"></span>
        <span class="icon search"></span>
        <span class="icon envelope"></span>
        <span class="icon heart"></span>
        <span class="icon star"></span>
        <span class="icon star-empty"></span>
        <span class="icon user"></span>
        <span class="icon film"></span>
        <span class="icon grid-large"></span>
        <span class="icon grid"></span>
        <span class="icon list-th"></span>
        <span class="icon ok"></span>
        <span class="icon remove"></span>
        <span class="icon zoom-in"></span>
        <span class="icon zoom-out"></span>
        <span class="icon off"></span>
        <span class="icon signal"></span>
        <span class="icon cog"></span>
        <span class="icon trash"></span>
        <span class="icon home"></span>
        <span class="icon file"></span>
        <span class="icon time"></span>
        <span class="icon road"></span>
        <span class="icon download"></span>
        <span class="icon download-circle"></span>
        <span class="icon upload-circle"></span>
        <span class="icon inbox"></span>
        <span class="icon play-circle"></span>
        <span class="icon repeat"></span>
        <span class="icon refresh"></span>
        <span class="icon list-alt"></span>
        <span class="icon lock"></span>
        <span class="icon flag"></span>
        <span class="icon headphones"></span>
        <span class="icon volume-off"></span>
        <span class="icon volume-down"></span>
        <span class="icon volume-up"></span>
        <span class="icon qrcode"></span>
        <span class="icon barcode"></span>
        <span class="icon tag"></span>
        <span class="icon tags"></span>
        <span class="icon book"></span>
        <span class="icon bookmark"></span>
        <span class="icon print"></span>
        <span class="icon camera"></span>
        <span class="icon font"></span>
        <span class="icon bold"></span>
        <span class="icon italic"></span>
        <span class="icon text-height"></span>
        <span class="icon text-width"></span>
        <span class="icon align-left"></span>
        <span class="icon align-center"></span>
        <span class="icon align-right"></span>
        <span class="icon align-justify"></span>
        <span class="icon list"></span>
        <span class="icon indent-left"></span>
        <span class="icon indent-right"></span>
        <span class="icon video"></span>
        <span class="icon picture"></span>
        <span class="icon pencil"></span>
        <span class="icon map-marker"></span>
        <span class="icon adjust"></span>
        <span class="icon tint"></span>
        <span class="icon edit"></span>
        <span class="icon share"></span>
        <span class="icon check"></span>
        <span class="icon move"></span>
        <span class="icon step-backward"></span>
        <span class="icon fast-backward"></span>
        <span class="icon backward"></span>
        <span class="icon play"></span>
        <span class="icon pause"></span>
        <span class="icon stop"></span>
        <span class="icon forward"></span>
        <span class="icon fast-forward"></span>
        <span class="icon step-forward"></span>
        <span class="icon eject"></span>
        <span class="icon chevron-left"></span>
        <span class="icon chevron-right"></span>
        <span class="icon plus-sign"></span>
        <span class="icon minus-sign"></span>
        <span class="icon remove-sign"></span>
        <span class="icon ok-sign"></span>
        <span class="icon question-sign"></span>
        <span class="icon info-sign"></span>
        <span class="icon screenshot"></span>
        <span class="icon remove-circle"></span>
        <span class="icon ok-circle"></span>
        <span class="icon ban-circle"></span>
        <span class="icon arrow-left"></span>
        <span class="icon arrow-right"></span>
        <span class="icon arrow-up"></span>
        <span class="icon arrow-down"></span>
        <span class="icon share-alt"></span>
        <span class="icon resize-full"></span>
        <span class="icon resize-small"></span>
        <span class="icon plus"></span>
        <span class="icon minus"></span>
        <span class="icon asterisk"></span>
        <span class="icon exclamation-sign"></span>
        <span class="icon gift"></span>
        <span class="icon leaf"></span>
        <span class="icon fire"></span>
        <span class="icon eye-open"></span>
        <span class="icon eye-close"></span>
        <span class="icon warning-sign"></span>
        <span class="icon plane"></span>
        <span class="icon calendar"></span>
        <span class="icon random"></span>
        <span class="icon comment"></span>
        <span class="icon magnet"></span>
        <span class="icon chevron-up"></span>
        <span class="icon chevron-down"></span>
        <span class="icon retweet"></span>
        <span class="icon shopping-cart"></span>
        <span class="icon folder-close"></span>
        <span class="icon folder-open"></span>
        <span class="icon resize-vertical"></span>
        <span class="icon resize-horizontal"></span>
        <span class="icon bar-chart"></span>
        <span class="icon twitter-sign"></span>
        <span class="icon facebook-sign"></span>
        <span class="icon camera-retro"></span>
        <span class="icon key"></span>
        <span class="icon cogs"></span>
        <span class="icon comments"></span>
        <span class="icon thumbs-up"></span>
        <span class="icon thumbs-down"></span>
        <span class="icon star-half"></span>
        <span class="icon heart-empty"></span>
        <span class="icon signout"></span>
        <span class="icon linkedin-sign"></span>
        <span class="icon pushpin"></span>
        <span class="icon external-link"></span>
        <span class="icon signin"></span>
        <span class="icon trophy"></span>
        <span class="icon github-sign"></span>
        <span class="icon upload"></span>
        <span class="icon lemon"></span>
        <span class="icon phone"></span>
        <span class="icon check-empty"></span>
        <span class="icon bookmark-empty"></span>
        <span class="icon phone-sign"></span>
        <span class="icon twitter"></span>
        <span class="icon facebook"></span>
        <span class="icon github"></span>
        <span class="icon unlock"></span>
        <span class="icon credit-card"></span>
        <span class="icon rss"></span>
        <span class="icon hdd"></span>
        <span class="icon bullhorn"></span>
        <span class="icon bell"></span>
        <span class="icon certificate"></span>
        <span class="icon hand-right"></span>
        <span class="icon hand-left"></span>
        <span class="icon hand-up"></span>
        <span class="icon hand-down"></span>
        <span class="icon left-sign"></span>
        <span class="icon right-sign"></span>
        <span class="icon up-sign"></span>
        <span class="icon down-sign"></span>
        <span class="icon globe"></span>
        <span class="icon wrench"></span>
        <span class="icon tasks"></span>
        <span class="icon filter"></span>
        <span class="icon briefcase"></span>
        <span class="icon fullscreen"></span>
        <span class="icon group"></span>
        <span class="icon link"></span>
        <span class="icon cloud"></span>
        <span class="icon beaker"></span>
        <span class="icon cut"></span>
        <span class="icon copy"></span>
        <span class="icon paper-clip"></span>
        <span class="icon save"></span>
        <span class="icon sign-blank"></span>
        <span class="icon menu"></span>
        <span class="icon list-ul"></span>
        <span class="icon list-ol"></span>
        <span class="icon strikethrough"></span>
        <span class="icon underline"></span>
        <span class="icon table"></span>
        <span class="icon magic"></span>
        <span class="icon truck"></span>
        <span class="icon pinterest"></span>
        <span class="icon pinterest-sign"></span>
        <span class="icon google-plus-sign"></span>
        <span class="icon google-plus"></span>
        <span class="icon money"></span>
        <span class="icon caret-down"></span>
        <span class="icon caret-up"></span>
        <span class="icon caret-left"></span>
        <span class="icon caret-right"></span>
        <span class="icon caret-sort"></span>
        <span class="icon caret-sort-down"></span>
        <span class="icon caret-sort-up"></span>
        <span class="icon columns"></span>
        <span class="icon envelope-alt"></span>
        <span class="icon linkedin"></span>
        <span class="icon undo"></span>
        <span class="icon legal"></span>
        <span class="icon dashboard"></span>
        <span class="icon comment-alt"></span>
        <span class="icon comments-alt"></span>
        <span class="icon bolt"></span>
        <span class="icon sitemap"></span>
        <span class="icon umbrella"></span>
        <span class="icon paste"></span>
        <span class="icon lightbulb"></span>
        <span class="icon exchange"></span>
        <span class="icon cloud-download"></span>
        <span class="icon cloud-upload"></span>
        <span class="icon user-md"></span>
        <span class="icon stethoscope"></span>
        <span class="icon suitcase"></span>
        <span class="icon bell-alt"></span>
        <span class="icon coffee"></span>
        <span class="icon food"></span>
        <span class="icon file-alt"></span>
        <span class="icon building"></span>
        <span class="icon hospital"></span>
        <span class="icon ambulance"></span>
        <span class="icon medkit"></span>
        <span class="icon fighter-jet"></span>
        <span class="icon beer"></span>
        <span class="icon h-sign"></span>
        <span class="icon sign"></span>
        <span class="icon double-angle-left"></span>
        <span class="icon double-angle-right"></span>
        <span class="icon double-angle-up"></span>
        <span class="icon double-angle-down"></span>
        <span class="icon angle-left"></span>
        <span class="icon angle-right"></span>
        <span class="icon angle-up"></span>
        <span class="icon angle-down"></span>
        <span class="icon desktop"></span>
        <span class="icon laptop"></span>
        <span class="icon tablet"></span>
        <span class="icon mobile-phone"></span>
        <span class="icon circle-blank"></span>
        <span class="icon quote-left"></span>
        <span class="icon quote-right"></span>
        <span class="icon spinner"></span>
        <span class="icon circle"></span>
        <span class="icon reply"></span>
        <span class="icon github-alt"></span>
        <span class="icon folder-close-alt"></span>
        <span class="icon folder-open-alt"></span>
        <small>Based on <a href="http://fortawesome.github.io/Font-Awesome/" target="_blank" class="text bold color theme">Font Awesome</a> Project</small>
    </div>

