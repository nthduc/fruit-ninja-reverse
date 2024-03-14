.class public final Lcom/facebook/share/model/ShareVideoContent;
.super Lcom/facebook/share/model/ShareContent;
.source "ShareVideoContent.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/ShareVideoContent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent<",
        "Lcom/facebook/share/model/ShareVideoContent;",
        "Lcom/facebook/share/model/ShareVideoContent$Builder;",
        ">;",
        "Lcom/facebook/share/model/ShareModel;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/share/model/ShareVideoContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final contentDescription:Ljava/lang/String;

.field private final contentTitle:Ljava/lang/String;

.field private final previewPhoto:Lcom/facebook/share/model/SharePhoto;

.field private final video:Lcom/facebook/share/model/ShareVideo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 113
    new-instance v0, Lcom/facebook/share/model/ShareVideoContent$1;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareVideoContent$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/ShareVideoContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 48
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Landroid/os/Parcel;)V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareVideoContent;->contentDescription:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareVideoContent;->contentTitle:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/facebook/share/model/SharePhoto$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/SharePhoto$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/SharePhoto$Builder;->readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/facebook/share/model/SharePhoto$Builder;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_29

    invoke-virtual {v0}, Lcom/facebook/share/model/SharePhoto$Builder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_25

    goto :goto_29

    :cond_25
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/facebook/share/model/ShareVideoContent;->previewPhoto:Lcom/facebook/share/model/SharePhoto;

    goto :goto_2f

    .line 53
    :cond_29
    :goto_29
    invoke-virtual {v0}, Lcom/facebook/share/model/SharePhoto$Builder;->build()Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareVideoContent;->previewPhoto:Lcom/facebook/share/model/SharePhoto;

    .line 57
    :goto_2f
    new-instance v0, Lcom/facebook/share/model/ShareVideo$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareVideo$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/ShareVideo$Builder;->readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareVideo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideo$Builder;->build()Lcom/facebook/share/model/ShareVideo;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/model/ShareVideoContent;->video:Lcom/facebook/share/model/ShareVideo;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/model/ShareVideoContent$Builder;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Lcom/facebook/share/model/ShareContent$Builder;)V

    .line 41
    # getter for: Lcom/facebook/share/model/ShareVideoContent$Builder;->contentDescription:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/model/ShareVideoContent$Builder;->access$000(Lcom/facebook/share/model/ShareVideoContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareVideoContent;->contentDescription:Ljava/lang/String;

    .line 42
    # getter for: Lcom/facebook/share/model/ShareVideoContent$Builder;->contentTitle:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/model/ShareVideoContent$Builder;->access$100(Lcom/facebook/share/model/ShareVideoContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareVideoContent;->contentTitle:Ljava/lang/String;

    .line 43
    # getter for: Lcom/facebook/share/model/ShareVideoContent$Builder;->previewPhoto:Lcom/facebook/share/model/SharePhoto;
    invoke-static {p1}, Lcom/facebook/share/model/ShareVideoContent$Builder;->access$200(Lcom/facebook/share/model/ShareVideoContent$Builder;)Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareVideoContent;->previewPhoto:Lcom/facebook/share/model/SharePhoto;

    .line 44
    # getter for: Lcom/facebook/share/model/ShareVideoContent$Builder;->video:Lcom/facebook/share/model/ShareVideo;
    invoke-static {p1}, Lcom/facebook/share/model/ShareVideoContent$Builder;->access$300(Lcom/facebook/share/model/ShareVideoContent$Builder;)Lcom/facebook/share/model/ShareVideo;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/model/ShareVideoContent;->video:Lcom/facebook/share/model/ShareVideo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/ShareVideoContent$Builder;Lcom/facebook/share/model/ShareVideoContent$1;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareVideoContent;-><init>(Lcom/facebook/share/model/ShareVideoContent$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/facebook/share/model/ShareVideoContent;->contentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTitle()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/facebook/share/model/ShareVideoContent;->contentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewPhoto()Lcom/facebook/share/model/SharePhoto;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/facebook/share/model/ShareVideoContent;->previewPhoto:Lcom/facebook/share/model/SharePhoto;

    return-object v0
.end method

.method public getVideo()Lcom/facebook/share/model/ShareVideo;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/facebook/share/model/ShareVideoContent;->video:Lcom/facebook/share/model/ShareVideo;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 105
    invoke-super {p0, p1, p2}, Lcom/facebook/share/model/ShareContent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 106
    iget-object p2, p0, Lcom/facebook/share/model/ShareVideoContent;->contentDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object p2, p0, Lcom/facebook/share/model/ShareVideoContent;->contentTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object p2, p0, Lcom/facebook/share/model/ShareVideoContent;->previewPhoto:Lcom/facebook/share/model/SharePhoto;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 109
    iget-object p2, p0, Lcom/facebook/share/model/ShareVideoContent;->video:Lcom/facebook/share/model/ShareVideo;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
