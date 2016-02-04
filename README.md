# Simple Contact List
## Utilizing ASP.NET Web Forms and Entity Framework with Three Layered (N-Layered) Approach

I have created this simple web application called “Simple Contact List” to show the utilization of ASP.NET Web Forms and Entity Framework with implementing a Three Layered (N-Layered) Approach.

### This web application is created with N-Layered Approach:

- **Presentation Layer**. This is the user interface.
- **Business Logic Layer**. (BLL) This is the layer where Presentation and Data Access layers use to communicate with each other.
- **Data Access Layer**. (DAL) This layer is responsible for handling Database related tasks.

These layers are created as projects named "SimpleContactList", "SimpleContactListBLL" and "SimpleContactListDAL".

### So what about N-Tier vs. N-Layered?

- **N-Tier**. This architecture usually has atleast three separate logical parts and each are located on separate physical server. Each tier is responsible for a specific functionality and is completely independent from each other. Communication between tiers is usually asynchronous in order to have better scalability.
- **N-Layered**. This is a approach that indicates logical separation of components having distinct namespaces and classes for Presentation Layer, Business Logic Layer (BLL) and Data Access Later (DAL). This approach is very important when several developers are working on the same project and some modules needs to be re-used in another project, and so, we can distribute work among developers and also maintain it in the future without much problems.

### Benefits of N-Tier Architecture:

- **Maintainability**. Since each tier is independent from other tiers then updates or changes can be done without affecting the application as a whole.
- **Scalability**. Scalling out an application is reasonably straight forward because tiers are based on the deployment of layers.
- **Flexibility**. Flexibility is increased because each tier can be manage or scale independently.
- **Availability**. This increases availability because applications can exploit the modular architecture of enabling systems using scalable components.

### Benefits of N-Layered Approach:

- **Isolation or Separation of concerns**. Coding separate layers makes it easier to design and build the application because you're separating the various parts such as presentation, business logic and data access. Developers in multiple discipline can work in parallel without much problem.
- **Abstraction**. Each layer has its own responsibility which allows you to analyze each in isolation. This makes it easier to look at a complete application and understand roles and responsibilities of each layer and the relationship between them.
- **Testability**. It is much easier to unit test each layer separately because there are fewer dependencies between various layers. For example you can test your Business Logic Layer or your Presentation Layer without requiring a real Database to test against.
- **Replaceability**. It is easier replace layers (i.e. your Data Access Layer) without affecting the other layers higher up in the stack.
- **Reusability**. One or more layers can be reuse in different applications.

### To summarize the advantage of Layers and Tiers:

- Layering helps you to maximize maintainability of the code, optimize the way that the application works when deployed in different ways, and provide a clear delineation between locations where certain technology or design decisions must be made.
- Placing your layers on separate physical tiers can help performance by distributing the load across multiple servers. It can also help with security by segregating more sensitive components and layers onto different networks or on the Internet versus an intranet.

Please feel free to re-use the web application for any purpose that you need it as long as you give me credits for the codes.

You can grab the files here in Github.

## Cheers!

Posted at my blog
> http://blog.erroldsanchez.com/simple-contact-list-utilizing-asp-net-web-forms-and-entity-framework-with-three-layered-n-layered-approach/

See live demo here
> http://demo-simplecontactlist-aspnet-webforms-ef.erroldsanchez.com/

### Database Setup:

1. Run the script found here https://github.com/khalel/SimpleContactList-ASPNET_WebForms_EF/tree/master/Solution/SimpleContactListDAL/Scripts
2. Update the connection string in the App.Config under SimpleContactListDAL project
3. Update the connection string in the Web.Config under SimpleContactList project