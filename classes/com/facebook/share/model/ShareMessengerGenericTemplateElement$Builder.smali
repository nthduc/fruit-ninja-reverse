.class public Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;
.super Ljava/lang/Object;
.source "ShareMessengerGenericTemplateElement.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModelBuilder<",
        "Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;",
        "Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private button:Lcom/facebook/share/model/ShareMessengerActionButton;

.field private defaultAction:Lcom/facebook/share/model/ShareMessengerActionButton;

.field private imageUrl:Landroid/net/Uri;

.field private subtitle:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;)Ljava/lang/String;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;)Ljava/lang/String;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->subtitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;)Landroid/net/Uri;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->imageUrl:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;)Lcom/facebook/share/model/ShareMessengerActionButton;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->defaultAction:Lcom/facebook/share/model/ShareMessengerActionButton;

    return-object p0
.end method

.method static synthetic access$400(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;)Lcom/facebook/share/model/ShareMessengerActionButton;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;
    .registers 3

    .line 157
    new-instance v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;-><init>(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 113
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->build()Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    move-result-object v0

    return-object v0
.end method

.method readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;
    .registers 3

    .line 174
    const-class v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    .line 176
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    .line 174
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->readFrom(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public readFrom(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;
    .registers 4

    if-nez p1, :cond_3

    return-object p0

    .line 166
    :cond_3
    # getter for: Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->title:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->access$1000(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->setTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;

    move-result-object v0

    .line 167
    # getter for: Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->subtitle:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->access$900(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->setSubtitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;

    move-result-object v0

    .line 168
    # getter for: Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->imageUrl:Landroid/net/Uri;
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->access$800(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;

    move-result-object v0

    .line 169
    # getter for: Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->defaultAction:Lcom/facebook/share/model/ShareMessengerActionButton;
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->access$700(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->setDefaultAction(Lcom/facebook/share/model/ShareMessengerActionButton;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;

    move-result-object v0

    .line 170
    # getter for: Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->button:Lcom/facebook/share/model/ShareMessengerActionButton;
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->access$600(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->setButton(Lcom/facebook/share/model/ShareMessengerActionButton;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 2

    .line 113
    check-cast p1, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->readFrom(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setButton(Lcom/facebook/share/model/ShareMessengerActionButton;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    return-object p0
.end method

.method public setDefaultAction(Lcom/facebook/share/model/ShareMessengerActionButton;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->defaultAction:Lcom/facebook/share/model/ShareMessengerActionButton;

    return-object p0
.end method

.method public setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->imageUrl:Landroid/net/Uri;

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->subtitle:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->title:Ljava/lang/String;

    return-object p0
.end method
