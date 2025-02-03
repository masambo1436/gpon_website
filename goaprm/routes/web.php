<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/','PagesController@index')->name('welcome');
Route::get('/about','PagesController@about')->name('about');
Route::get('/contact','PagesController@contact')->name('contact');
Route::get('/abuja','PagesController@abuja')->name('abuja');
Route::get('/adamawa','PagesController@adamawa')->name('adamawa');
Route::get('/yobe','PagesController@yobe')->name('yobe');
Route::get('/borno','PagesController@borno')->name('borno');
Route::get('/benue','PagesController@benue')->name('benue');
Route::get('/what-we-do','PagesController@watwedo')->name('services');
Route::get('/underconstruction','PagesController@underconstruction')->name('underconstruction');
Route::get('/what-we-do/{id}','PagesController@watwedosingle')->name('sersingle');
Route::get('/gallery','PagesController@gallery')->name('gallery');
Route::get('/gallery/{id}','PagesController@galleryimages')->name('galldetails');
Route::get('/research-publication','PagesController@research')->name('research');
Route::get('/research/{details}','PagesController@research_detail')->name('repotdetails');
Route::get('/journal/{details}','PagesController@journal_detail')->name('journaldetails');
Route::get('/projects','PagesController@project')->name('project');
Route::get('/projects/{id}','PagesController@project_details')->name('projed');
Route::get('/event','PagesController@evente')->name('event');
Route::get('/event-details/{id}','PagesController@singleente')->name('eventsin');
Route::get('/spotlight','PagesController@news')->name('news');
Route::get('/journal','PagesController@journal')->name('journal');
Route::get('/objective','PagesController@objective')->name('objective');
Route::get('/spotlight/{slug}','PagesController@newsdet')->name('newsdetails');
Route::get('/one-dollar-details','PagesController@one_dollar_details')->name('oned');
Route::get('/faq', 'PagesController@faq')->name('fq');
Route::get('/our-team','PagesController@team')->name('tem');
Route::get('/our-team/{id}','PagesController@team_details')->name('temdetails');
Route::post('/addcomment', 'PagesController@addcomments')->name('addcomments');
Route::post('/sencontactdmail','PagesController@sendcontactmail')->name('contactsend');
Route::get('/volunteer','PagesController@volunteers')->name('volun');
Route::get('/donation','PagesController@donation')->name('donte');
Route::get('/goalprime-tv','PagesController@goalprimetv')->name('gpritv');
Route::post('/volunteer-form','PagesController@savevolunteers')->name('saveform');
Route::post('/donation-form','PagesController@savedonation')->name('savedonate');
Route::post('/subcriber','PagesController@subcribers')->name('subcribe');
Route::post('/get-attendance', 'PagesController@attendance')->name('regevent');


//admin
Route::group(['prefix' => 'admin'],function(){
  Route::get('/login','Auth\Adminlogincontroller@showadminlogin')->name('show.login');
 Route::post('/login','Auth\Adminlogincontroller@adminlogin')->name('admin.login');
Route::get('/logout', 'Auth\Adminlogincontroller@adminlogout')->name('admin.logout');

Route::get('/','AdminController@index')->name('admin.dashboard');
Route::get('/user', 'AdminController@adminuser')->name('admin.user');
Route::post('/user-create', 'AdminController@store')->name('newuser.store');
Route::get('/change-password', 'AdminController@changepasswordpg')->name('password.change');
Route::post('/change-password', 'AdminController@changepassword')->name('change.pass');
Route::get('/delete/{id}', 'AdminController@destroy')->name('admin.delete');
Route::get('/create_admin/{id}', 'AdminController@make_admin')->name('make_admin');
Route::get('/remove_admin/{id}', 'AdminController@not_admin')->name('not_admin');

//pages
Route::get('/gallery', 'AdminController@gallery')->name('admin.gallery');
Route::get('/what-we-do', 'AdminController@whatwedo')->name('admin.whatwedo');
Route::get('/news/all', 'AdminController@newspage')->name('admin.newspage');
Route::get('/volunteers', 'AdminController@volunter')->name('admin.volunteer');
Route::get('/donations', 'AdminController@donates')->name('admin.donation');
Route::post('/sendremindermsg', 'AdminController@send_reminder_message')->name('sendreminder');
Route::get('/donations/reminder/mails', 'AdminController@donatesmail')->name('getdonationmail');
Route::get('/donations/{id}', 'AdminController@showdonate')->name('admin.showdonation');
Route::get('/volunteers/{id}', 'AdminController@showvolunteer')->name('admin.showvolunteer');

 //settings 
Route::get('/settings','PagesettingsController@pageset')->name('pageset');
Route::post('/settings/create','PagesettingsController@addpagesettings')->name('addsetting');



//posts news
Route::get('/news/create', 'AdminController@newscreate')->name('admin.addnews');
Route::post('/news/post', 'AdminController@postnews')->name('admin.newspost');
Route::get('/news/{id}/edit', 'AdminController@newsedit')->name('admin.newsedit');
Route::post('/news/update/{id}', 'AdminController@postnewsupdate')->name('admin.newspostupdate');
Route::get('/news-delete/{id}', 'AdminController@newsdelete')->name('admin.newsdelete');

//research
Route::get('/research', 'ResearchController@index')->name('re.index');
Route::get('/research/create', 'ResearchController@create')->name('re.create');
Route::post('/research/post', 'ResearchController@store')->name('re.store');
Route::get('/research/{id}/edit', 'ResearchController@edit')->name('re.edit');
Route::post('/research/update/{id}', 'ResearchController@update')->name('re.update');
Route::get('/research-delete/{id}', 'ResearchController@delete')->name('re.delete');

//whatwedo
Route::post('/what-we-do', 'AdminController@addservices')->name('newservice');
Route::get('/what-we-do/{id}/edit', 'AdminController@servicesedit')->name('service.edit');
Route::post('/what-we-do/update/{id}', 'AdminController@serviceupdate')->name('service.update');
Route::get('/what-we-do/delete/{id}', 'AdminController@servicedelete')->name('service.delete');
Route::get('/removeimage/{id}','AdminController@deleteservicesimg')->name('rmimag');

//partners
Route::get('/partners', 'AdminController@partner')->name('admin.partner');
Route::get('/uploads', 'AdminController@upload')->name('admin.uploads');
Route::post('/partners', 'AdminController@addpartner')->name('newpartner');
Route::get('/partners/{id}/edit', 'AdminController@partneredit')->name('partner.edit');
Route::post('/partners/update/{id}', 'AdminController@partnerupdate')->name('partner.update');
Route::get('/partners/delete/{id}', 'AdminController@partnerdelete')->name('partner.delete');

//gallery
Route::post('/gallery', 'AdminController@addgallery')->name('newgallery');
Route::get('/gallery/{id}/edit', 'AdminController@galleryedit')->name('gallery.edit');
Route::post('/gallery/update/{id}', 'AdminController@galleryupdate')->name('gallery.update');
Route::get('/gallery/delete/{id}', 'AdminController@gallerydelete')->name('gallery.delete');
Route::post('/gallery/images', 'AdminController@galleryimages')->name('galleryimags');
Route::get('/remove-image/{id}','AdminController@gdelete')->name('removeimage');

Route::get('/news-letter','AdminController@managenewsletter')->name('newslet');
Route::get('/news/delete/{id}','AdminController@deletenewsletter')->name('newsletter.delete');
Route::get('/broadcast','AdminController@showbroadcast')->name('showbcast');
Route::post('/sendbroadcast','AdminController@sendbroadcast')->name('send.msg');

Route::post('/sendmail','AdminController@sendmailvoldon')->name('sendmail');

//faq
Route::get('/faq', 'AdminController@faqpage')->name('admin.faq');
Route::post('/faq', 'AdminController@addfaq')->name('admin.addquest');
Route::get('/faq/{id}/edit', 'AdminController@faqedit')->name('faq.edit');
Route::post('/faq/update/{id}', 'AdminController@faqupdate')->name('faq.update');
Route::get('/faq/delete/{id}', 'AdminController@faqdelete')->name('faq.delete');

//team
Route::get('/team', 'AdminController@team')->name('admin.team');
Route::post('/team-add', 'AdminController@addteam')->name('newteam');
Route::get('/team/{id}/edit', 'AdminController@teamedit')->name('team.edit');
Route::post('/team/update/{id}', 'AdminController@teamupdate')->name('team.update');
Route::get('/team/delete/{id}', 'AdminController@teamdelete')->name('team.delete');

//events
Route::get('/event', 'EventController@index')->name('event.index');
Route::get('/event/create', 'EventController@create')->name('event.create');
Route::post('/event/store', 'EventController@store')->name('event.store');
Route::get('/event/{id}/edit', 'EventController@edit')->name('event.edit');
Route::post('/event/update/{id}', 'EventController@update')->name('event.update');
Route::get('/event/delete/{id}', 'EventController@destroy')->name('event.delete');
Route::get('/event/attendance/{id}', 'EventController@attend')->name('event.attend');
Route::get('/event/publish/{id}', 'EventController@publish')->name('event.publish');
Route::get('/event/unpublish/{id}', 'EventController@not_publish')->name('event.unpublish');


  //testimonial
  Route::get('/testimonial','TestimonialController@index')->name('tst.index');
  Route::get('/testimonial/create','TestimonialController@create')->name('tst.create');
  Route::post('/testimonial/store','TestimonialController@store')->name('tst.store');
  Route::get('/testimonial/{id}/edit','TestimonialController@edit')->name('tst.edit');
  Route::post('/testimonial/update/{id}','TestimonialController@update')->name('tst.update');
  Route::get('/testimonial/delete/{id}','TestimonialController@destroy')->name('tst.delete');

  //program
  Route::get('/program','ProgramController@index')->name('prog.index');
  Route::get('/program/create','ProgramController@create')->name('prog.create');
  Route::post('/program/store','ProgramController@store')->name('prog.store');
  Route::get('/program/{id}/edit','ProgramController@edit')->name('prog.edit');
  Route::post('/program/update/{id}','ProgramController@update')->name('prog.update');
  Route::get('/program/delete/{id}','ProgramController@destroy')->name('prog.delete');

  //program
  Route::get('/projects','ProjectController@index')->name('pro.index');
  Route::get('/projects/create','ProjectController@create')->name('pro.create');
  Route::post('/projects/store','ProjectController@store')->name('pro.store');
  Route::get('/projects/{id}/edit','ProjectController@edit')->name('pro.edit');
  Route::post('/projects/update/{id}','ProjectController@update')->name('pro.update');
  Route::get('/projects/delete/{id}','ProjectController@destroy')->name('pro.delete');
  Route::post('/projects/amount-raised','ProjectController@pro_raised')->name('pro.raised');

  //slide
Route::get('/slide', 'SlidesController@index')->name('slide.index');
Route::get('/slide/create', 'SlidesController@create')->name('slide.create');
Route::post('/slide/store', 'SlidesController@store')->name('slide.store');
Route::get('/slide/{id}/edit', 'SlidesController@edit')->name('slide.edit');
Route::post('/slide/update/{id}', 'SlidesController@update')->name('slide.update');
Route::get('/slide/active/{id}', 'SlidesController@activate')->name('slide.activate');
Route::get('/slide/inactive/{id}', 'SlidesController@deactivate')->name('slide.deactivate');
Route::get('/slide/delete/{id}', 'SlidesController@destroy')->name('slide.delete');

//live stream
Route::get('/gprime-tv', 'GprimetvController@index')->name('live.index');
Route::post('/gprime-tv/store', 'GprimetvController@store')->name('live.store');
Route::get('/gprime-tv/{id}/edit', 'GprimetvController@edit')->name('live.edit');
Route::post('/gprime-tv/update/{id}', 'GprimetvController@update')->name('live.update');
Route::get('/gprime-tv/delete{id}', 'GprimetvController@delete')->name('live.delete');
Route::get('/gprime-tv/publish/{id}', 'GprimetvController@publish')->name('live.publish');
Route::get('/gprime-tv/unpublish/{id}', 'GprimetvController@not_publish')->name('live.unpublish');
});
