.class public final Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;
.super Lcom/google/android/gms/games/internal/zze;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Lcom/google/android/gms/games/internal/player/StockProfileImage;


# annotations
.annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
    value = "GamesGmsClientImpl.java"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "StockProfileImageEntityCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x3e8
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzfv:Landroid/net/Uri;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getImageUri"
        id = 0x2
    .end annotation
.end field

.field private final zznv:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getImageUrl"
        id = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lcom/google/android/gms/games/internal/player/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/player/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zze;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;->zznv:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;->zzfv:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 9
    instance-of v0, p1, Lcom/google/android/gms/games/internal/player/StockProfileImage;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    .line 13
    :cond_a
    check-cast p1, Lcom/google/android/gms/games/internal/player/StockProfileImage;

    .line 14
    iget-object v2, p0, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;->zznv:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/player/StockProfileImage;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;->zzfv:Landroid/net/Uri;

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/player/StockProfileImage;->zzaj()Landroid/net/Uri;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    return v0

    :cond_25
    return v1
.end method

.method public final bridge synthetic freeze()Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;->zznv:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x2

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;->zznv:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;->zzfv:Landroid/net/Uri;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isDataValid()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 17
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;->zznv:Ljava/lang/String;

    const-string v2, "ImageId"

    .line 18
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;->zzfv:Landroid/net/Uri;

    const-string v2, "ImageUri"

    .line 19
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 26
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 28
    iget-object v1, p0, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;->zzfv:Landroid/net/Uri;

    const/4 v3, 0x2

    .line 30
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 31
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzaj()Landroid/net/Uri;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;->zzfv:Landroid/net/Uri;

    return-object v0
.end method
