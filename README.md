Sinatra Modular MVC Example
===========================

This is a simple example that demonstrates a few techniques for building a modular Sinatra application with the model-view-controller design pattern.

Features
--------

- Multiple controllers. See the "config.ru" to see how the URI prefix is mapped to different controllers.
- Utilizes the default "layout.erb" root template file.
- It presents a home page, with a link to a form that implements validation and populates a model object. There is an instance of the "Prospect" model class in "ProspectController", and the "views/prospect/form.erb" refers to the model.
- Templates in sub-folders. When creating multiple controllers, subclass from a single "App" controller so that all template paths are relative to the root path. If you subclass your controller (in the controllers folder) from 'Sinatra::Base' and refer to erb templates, Sinatra will look for your views in the controllers folder.  This is probably not want you want. You can also add this to your controller if you don't want to subclass from App.

		set :root, File.dirname(__FILE__) + "/../"