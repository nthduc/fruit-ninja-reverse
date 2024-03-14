.class public final Lcom/facebook/Profile;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIRST_NAME_KEY:Ljava/lang/String; = "first_name"

.field private static final ID_KEY:Ljava/lang/String; = "id"

.field private static final LAST_NAME_KEY:Ljava/lang/String; = "last_name"

.field private static final LINK_URI_KEY:Ljava/lang/String; = "link_uri"

.field private static final MIDDLE_NAME_KEY:Ljava/lang/String; = "middle_name"

.field private static final NAME_KEY:Ljava/lang/String; = "name"

.field private static final TAG:Ljava/lang/String; = "Profile"


# instance fields
.field private final firstName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final id:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final lastName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final linkUri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final middleName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 313
    new-instance v0, Lcom/facebook/Profile$2;

    invoke-direct {v0}, Lcom/facebook/Profile$2;-><init>()V

    sput-object v0, Lcom/facebook/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_29

    const/4 p1, 0x0

    goto :goto_2d

    .line 295
    :cond_29
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_2d
    iput-object p1, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/Profile$1;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/Profile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 8
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    .line 132
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iput-object p1, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    .line 136
    iput-object p3, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    .line 137
    iput-object p4, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    .line 138
    iput-object p5, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    .line 139
    iput-object p6, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 4

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const-string v1, "id"

    .line 279
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    const-string v1, "first_name"

    .line 280
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    const-string v1, "middle_name"

    .line 281
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    const-string v1, "last_name"

    .line 282
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    const-string v1, "name"

    .line 283
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    const-string v1, "link_uri"

    .line 284
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_35

    goto :goto_39

    .line 285
    :cond_35
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_39
    iput-object v0, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 35
    sget-object v0, Lcom/facebook/Profile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static fetchProfileForCurrentAccessToken()V
    .registers 2

    .line 80
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 81
    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v0, 0x0

    .line 82
    invoke-static {v0}, Lcom/facebook/Profile;->setCurrentProfile(Lcom/facebook/Profile;)V

    return-void

    .line 87
    :cond_f
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/Profile$1;

    invoke-direct {v1}, Lcom/facebook/Profile$1;-><init>()V

    .line 86
    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->getGraphMeRequestWithCacheAsync(Ljava/lang/String;Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;)V

    return-void
.end method

.method public static getCurrentProfile()Lcom/facebook/Profile;
    .registers 1

    .line 59
    invoke-static {}, Lcom/facebook/ProfileManager;->getInstance()Lcom/facebook/ProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ProfileManager;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v0

    return-object v0
.end method

.method public static setCurrentProfile(Lcom/facebook/Profile;)V
    .registers 2
    .param p0    # Lcom/facebook/Profile;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 71
    invoke-static {}, Lcom/facebook/ProfileManager;->getInstance()Lcom/facebook/ProfileManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/ProfileManager;->setCurrentProfile(Lcom/facebook/Profile;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 218
    :cond_4
    instance-of v1, p1, Lcom/facebook/Profile;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 222
    :cond_a
    check-cast p1, Lcom/facebook/Profile;

    .line 224
    iget-object v1, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/Profile;->id:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    if-nez v1, :cond_21

    iget-object p1, p1, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    if-nez p1, :cond_1f

    goto :goto_75

    :cond_1f
    const/4 v0, 0x0

    goto :goto_75

    :cond_21
    iget-object v1, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    .line 226
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    if-nez v1, :cond_34

    iget-object p1, p1, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    if-nez p1, :cond_1f

    goto :goto_75

    :cond_34
    iget-object v1, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    .line 228
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    if-nez v1, :cond_47

    iget-object p1, p1, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    if-nez p1, :cond_1f

    goto :goto_75

    :cond_47
    iget-object v1, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    .line 230
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    if-nez v1, :cond_5a

    iget-object p1, p1, Lcom/facebook/Profile;->name:Ljava/lang/String;

    if-nez p1, :cond_1f

    goto :goto_75

    :cond_5a
    iget-object v1, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/Profile;->name:Ljava/lang/String;

    .line 232
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    iget-object v1, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    if-nez v1, :cond_6d

    iget-object p1, p1, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    if-nez p1, :cond_1f

    goto :goto_75

    :cond_6d
    iget-object v0, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    iget-object p1, p1, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    .line 234
    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_75
    return v0
.end method

.method public getFirstName()Ljava/lang/String;
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkUri()Landroid/net/Uri;
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProfilePictureUri(II)Landroid/net/Uri;
    .registers 5

    .line 151
    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 152
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_f
    const-string v0, ""

    .line 155
    :goto_11
    iget-object v1, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    invoke-static {v1, p1, p2, v0}, Lcom/facebook/internal/ImageRequest;->getProfilePictureUri(Ljava/lang/String;IILjava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 3

    .line 241
    iget-object v0, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    .line 242
    iget-object v0, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    if-eqz v0, :cond_14

    mul-int/lit8 v1, v1, 0x1f

    .line 243
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 245
    :cond_14
    iget-object v0, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    if-eqz v0, :cond_1f

    mul-int/lit8 v1, v1, 0x1f

    .line 246
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 248
    :cond_1f
    iget-object v0, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    if-eqz v0, :cond_2a

    mul-int/lit8 v1, v1, 0x1f

    .line 249
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 251
    :cond_2a
    iget-object v0, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    if-eqz v0, :cond_35

    mul-int/lit8 v1, v1, 0x1f

    .line 252
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 254
    :cond_35
    iget-object v0, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    if-eqz v0, :cond_40

    mul-int/lit8 v1, v1, 0x1f

    .line 255
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_40
    return v1
.end method

.method toJSONObject()Lorg/json/JSONObject;
    .registers 4

    .line 262
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "id"

    .line 264
    iget-object v2, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "first_name"

    .line 265
    iget-object v2, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "middle_name"

    .line 266
    iget-object v2, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "last_name"

    .line 267
    iget-object v2, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    .line 268
    iget-object v2, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    iget-object v1, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    if-eqz v1, :cond_39

    const-string v1, "link_uri"

    .line 270
    iget-object v2, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_37} :catch_38

    goto :goto_39

    :catch_38
    const/4 v0, 0x0

    :cond_39
    :goto_39
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 305
    iget-object p2, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    iget-object p2, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    iget-object p2, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    iget-object p2, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    iget-object p2, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    iget-object p2, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    if-nez p2, :cond_1f

    const/4 p2, 0x0

    goto :goto_23

    :cond_1f
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
