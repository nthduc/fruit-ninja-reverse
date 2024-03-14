.class public final Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;
.super Ljava/lang/Object;
.source "ShareMessengerGenericTemplateElement.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final button:Lcom/facebook/share/model/ShareMessengerActionButton;

.field private final defaultAction:Lcom/facebook/share/model/ShareMessengerActionButton;

.field private final imageUrl:Landroid/net/Uri;

.field private final subtitle:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 101
    new-instance v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$1;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->title:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->subtitle:Ljava/lang/String;

    .line 56
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->imageUrl:Landroid/net/Uri;

    .line 57
    const-class v0, Lcom/facebook/share/model/ShareMessengerActionButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareMessengerActionButton;

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->defaultAction:Lcom/facebook/share/model/ShareMessengerActionButton;

    .line 58
    const-class v0, Lcom/facebook/share/model/ShareMessengerActionButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/facebook/share/model/ShareMessengerActionButton;

    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    # getter for: Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->title:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->access$000(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->title:Ljava/lang/String;

    .line 47
    # getter for: Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->subtitle:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->access$100(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->subtitle:Ljava/lang/String;

    .line 48
    # getter for: Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->imageUrl:Landroid/net/Uri;
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->access$200(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->imageUrl:Landroid/net/Uri;

    .line 49
    # getter for: Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->defaultAction:Lcom/facebook/share/model/ShareMessengerActionButton;
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->access$300(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;)Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->defaultAction:Lcom/facebook/share/model/ShareMessengerActionButton;

    .line 50
    # getter for: Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->button:Lcom/facebook/share/model/ShareMessengerActionButton;
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->access$400(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;)Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$1;)V
    .registers 3

    .line 37
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;-><init>(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)Ljava/lang/String;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)Lcom/facebook/share/model/ShareMessengerActionButton;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    return-object p0
.end method

.method static synthetic access$700(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)Lcom/facebook/share/model/ShareMessengerActionButton;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->defaultAction:Lcom/facebook/share/model/ShareMessengerActionButton;

    return-object p0
.end method

.method static synthetic access$800(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)Landroid/net/Uri;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->imageUrl:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$900(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)Ljava/lang/String;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->subtitle:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getButton()Lcom/facebook/share/model/ShareMessengerActionButton;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    return-object v0
.end method

.method public getDefaultAction()Lcom/facebook/share/model/ShareMessengerActionButton;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->defaultAction:Lcom/facebook/share/model/ShareMessengerActionButton;

    return-object v0
.end method

.method public getImageUrl()Landroid/net/Uri;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->imageUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->title:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 93
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->subtitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->imageUrl:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 96
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->defaultAction:Lcom/facebook/share/model/ShareMessengerActionButton;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 97
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
