<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SimpleContactList.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="jumbotron">
        <h1>Simple Contact List</h1>

        <h2>
            
            Utilizing ASP.NET Web Forms and Entity Framework
            <br />
            with Three Layered (N-Layered) Approach
        </h2>

        <a class="btn btn-primary btn-lg" href="ContactList.aspx" role="button">Show Contacts</a>
    </div>
    
    <div class="row">
        <div class="col-md-6">
            <blockquote>
                <p class="text-center">
                    You can grab the files in <a href="https://github.com/khalel/SimpleContactList-ASPNET_WebForms_EF/tree/develop" target="_blank">GitHub</a>.
                </p>
            </blockquote>
        </div>
        <div class="col-md-6">
            <blockquote>
                <p class="text-center">
                    This is also posted in <a href="http://blog.erroldsanchez.com/simple-contact-list-utilizing-asp-net-web-forms-and-entity-framework-with-three-layered-n-layered-approach/" target="_blank">My Blog</a>.
                </p>
            </blockquote>
        </div>
    </div>

    <p>
        I have created this simple web application called “Simple Contact List” to show the  utilization of ASP.NET Web Forms 
        and Entity Framework with implementing a Three Layered (N-Layered) Approach.
    </p>

    <h4><u>This web application is created with N-Layered Approach:</u></h4>

    <ul>
        <li>
            <strong>Presentation Layer</strong>. 
            This is the user interface.
        </li>
        <li>
            <strong>Business Logic Layer</strong>. (BLL) 
            This is the layer where Presentation and Data Access layers use to communicate with each other.
        </li>
        <li>
            <strong>Data Access Layer</strong>. (DAL) 
            This layer is responsible for handling Database related tasks.
        </li>
    </ul>

    <p>These layers are created as projects named "SimpleContactList", "SimpleContactListBLL" and "SimpleContactListDAL".</p>

    <h4><u>So what about N-Tier vs. N-Layered?</u></h4>

    <ul>
        <li>
            <strong>N-Tier</strong>. 
            This architecture usually has atleast three separate logical parts and each are located on separate physical 
            server. Each tier is responsible for a specific functionality and is completely independent from each other. 
            Communication between tiers is usually asynchronous in order to have better scalability.
        </li>
        <li>
            <strong>N-Layered</strong>. 
            This is a approach that indicates logical separation of components having distinct namespaces and classes for 
            Presentation Layer, Business Logic Layer (BLL) and Data Access Later (DAL). This approach is very important 
            when several developers are working on the same project and some modules needs to be re-used in another project, 
            and so, we can distribute work among developers and also maintain it in the future without much problems.
        </li>
    </ul>

    <h4><u>Benefits of N-Tier Architecture:</u></h4>

    <ul>
        <li>
            <strong>Maintainability</strong>. 
            Since each tier is independent from other tiers then updates or changes can be done without affecting the application 
            as a whole.
        </li>
        <li>
            <strong>Scalability</strong>. 
            Scalling out an application is reasonably straight forward because tiers are based on the deployment of layers.
        </li>
        <li>
            <strong>Flexibility</strong>. 
            Flexibility is increased because each tier can be manage or scale independently.
        </li>
        <li>
            <strong>Availability</strong>. 
            This increases availability because applications can exploit the modular architecture of enabling systems using 
            scalable components.
        </li>
    </ul>

    <h4><u>Benefits of N-Layered Approach:</u></h4>

    <ul>
        <li>
            <strong>Isolation or Separation of concerns</strong>. 
            Coding separate layers makes it easier to design and build the application because you're separating the various 
            parts such as presentation, business logic and data access. Developers in multiple discipline can work in parallel 
            without much problem.
        </li>
        <li>
            <strong>Abstraction</strong>. 
            Each layer has its own responsibility which allows you to analyze each in isolation. This makes it easier to look 
            at a complete application and understand roles and responsibilities of each layer and the relationship between them.
        </li>
        <li>
            <strong>Testability</strong>. 
            It is much easier to unit test each layer separately because there are fewer dependencies between various layers. 
            For example you can test your Business Logic Layer or your Presentation Layer without requiring a real Database 
            to test against.
        </li>
        <li>
            <strong>Replaceability</strong>. 
            It is easier replace layers (i.e. your Data Access Layer) without affecting the other layers higher up in the stack.
        </li>
        <li>
            <strong>Reusability</strong>. 
            One or more layers can be reuse in different applications.
        </li>
    </ul>

    <h4><u>To summarize the advantage of Layers and Tiers:</u></h4>

    <ul>
        <li>
            Layering helps you to maximize maintainability of the code, optimize the way that the application works when 
            deployed in different ways, and provide a clear delineation between locations where certain technology or design 
            decisions must be made.
        </li>
        <li>
            Placing your layers on separate physical tiers can help performance by distributing the load across multiple 
            servers. It can also help with security by segregating more sensitive components and layers onto different networks 
            or on the Internet versus an intranet.
        </li>
    </ul>

    <p>Please feel free to re-use the web application for any purpose that you need it as long as you give me credits for the codes.</p>

    <h4>Cheers!</h4>
</asp:Content>
