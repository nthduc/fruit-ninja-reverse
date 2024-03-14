.class synthetic Lcom/unity3d/services/banners/UnityBannerSize$1;
.super Ljava/lang/Object;
.source "UnityBannerSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/banners/UnityBannerSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$unity3d$services$banners$UnityBannerSize$BannerSize:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 62
    invoke-static {}, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;->values()[Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/unity3d/services/banners/UnityBannerSize$1;->$SwitchMap$com$unity3d$services$banners$UnityBannerSize$BannerSize:[I

    :try_start_9
    sget-object v0, Lcom/unity3d/services/banners/UnityBannerSize$1;->$SwitchMap$com$unity3d$services$banners$UnityBannerSize$BannerSize:[I

    sget-object v1, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;->BANNER_SIZE_STANDARD:Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

    invoke-virtual {v1}, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/unity3d/services/banners/UnityBannerSize$1;->$SwitchMap$com$unity3d$services$banners$UnityBannerSize$BannerSize:[I

    sget-object v1, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;->BANNER_SIZE_LEADERBOARD:Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

    invoke-virtual {v1}, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/unity3d/services/banners/UnityBannerSize$1;->$SwitchMap$com$unity3d$services$banners$UnityBannerSize$BannerSize:[I

    sget-object v1, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;->BANNER_SIZE_IAB_STANDARD:Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;

    invoke-virtual {v1}, Lcom/unity3d/services/banners/UnityBannerSize$BannerSize;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    return-void
.end method
