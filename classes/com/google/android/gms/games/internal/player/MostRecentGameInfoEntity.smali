.class public final Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;
.super Lcom/google/android/gms/games/internal/zze;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Lcom/google/android/gms/games/internal/player/zza;


# annotations
.annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
    value = "GamesGmsClientImpl.java"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "MostRecentGameInfoEntityCreator"
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
            "Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzlt:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getGameId"
        id = 0x1
    .end annotation
.end field

.field private final zzlu:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getGameName"
        id = 0x2
    .end annotation
.end field

.field private final zzlv:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getActivityTimestampMillis"
        id = 0x3
    .end annotation
.end field

.field private final zzlw:Landroid/net/Uri;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getGameIconImageUri"
        id = 0x4
    .end annotation
.end field

.field private final zzlx:Landroid/net/Uri;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getGameHiResImageUri"
        id = 0x5
    .end annotation
.end field

.field private final zzly:Landroid/net/Uri;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getGameFeaturedImageUri"
        id = 0x6
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 84
    new-instance v0, Lcom/google/android/gms/games/internal/player/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/player/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/internal/player/zza;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zze;-><init>()V

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/player/zza;->zzdc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->zzlt:Ljava/lang/String;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/player/zza;->zzdd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->zzlu:Ljava/lang/String;

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/player/zza;->zzde()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->zzlv:J

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/player/zza;->zzdf()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->zzlw:Landroid/net/Uri;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/player/zza;->zzdg()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->zzlx:Landroid/net/Uri;

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/player/zza;->zzdh()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->zzly:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p3    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p5    # Landroid/net/Uri;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p6    # Landroid/net/Uri;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p7    # Landroid/net/Uri;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zze;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->zzlt:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->zzlu:Ljava/lang/String;

    .line 12
    iput-wide p3, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->zzlv:J

    .line 13
    iput-object p5, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->zzlw:Landroid/net/Uri;

    .line 14
    iput-object p6, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->zzlx:Landroid/net/Uri;

    .line 15
    iput-object p7, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->zzly:Landroid/net/Uri;

    return-void
.end method

.method static zza(Lcom/google/android/gms/games/internal/player/zza;)I
    .registers 4

    const/4 v0, 0x6

    .line 25
    new-array v0, v0, [Ljava/lang/Object;

    .line 26
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/zza;->zzdc()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 27
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/zza;->zzdd()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 28
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/zza;->zzde()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 29
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/zza;->zzdf()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 30
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/zza;->zzdg()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 31
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/zza;->zzdh()Landroid/net/Uri;

    move-result-object p0

    const/4 v1, 0x5

    aput-object p0, v0, v1

    .line 32
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static zza(Lcom/google/android/gms/games/internal/player/zza;Ljava/lang/Object;)Z
    .registers 7

    .line 34
    instance-of v0, p1, Lcom/google/android/gms/games/internal/player/zza;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    return v0

    .line 38
    :cond_a
    check-cast p1, Lcom/google/android/gms/games/internal/player/zza;

    .line 39
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/player/zza;->zzdc()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/zza;->zzdc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 40
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/player/zza;->zzdd()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/zza;->zzdd()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 41
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/player/zza;->zzde()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/zza;->zzde()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 42
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/player/zza;->zzdf()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/zza;->zzdf()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 43
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/player/zza;->zzdg()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/zza;->zzdg()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 44
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/player/zza;->zzdh()Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/zza;->zzdh()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_69

    return v0

    :cond_69
    return v1
.end method

.method static zzb(Lcom/google/android/gms/games/internal/player/zza;)Ljava/lang/String;
    .registers 4

    .line 47
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 48
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/zza;->zzdc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameId"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 49
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/zza;->zzdd()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameName"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 50
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/zza;->zzde()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ActivityTimestampMillis"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 51
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/zza;->zzdf()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "GameIconUri"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 52
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/zza;->zzdg()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "GameHiResUri"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 53
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/player/zza;->zzdh()Landroid/net/Uri;

    move-result-object p0

    const-string v1, "GameFeaturedUri"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 33
    invoke-static {p0, p1}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->zza(Lcom/google/android/gms/games/internal/player/zza;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic freeze()Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

.method public final hashCode()I
    .registers 2

    .line 24
    invoke-static {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->zza(Lcom/google/android/gms/games/internal/player/zza;)I

    move-result v0

    return v0
.end method

.method public final isDataValid()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 46
    invoke-static {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->zzb(Lcom/google/android/gms/games/internal/player/zza;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    .line 57
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 59
    iget-object v1, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->zzlt:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 61
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 63
    iget-object v1, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->zzlu:Ljava/lang/String;

    const/4 v3, 0x2

    .line 65
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 67
    iget-wide v3, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->zzlv:J

    const/4 v1, 0x3

    .line 68
    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 70
    iget-object v1, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->zzlw:Landroid/net/Uri;

    const/4 v3, 0x4

    .line 72
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 74
    iget-object v1, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->zzlx:Landroid/net/Uri;

    const/4 v3, 0x5

    .line 76
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 78
    iget-object v1, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->zzly:Landroid/net/Uri;

    const/4 v3, 0x6

    .line 80
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 81
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzdc()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->zzlt:Ljava/lang/String;

    return-object v0
.end method

.method public final zzdd()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->zzlu:Ljava/lang/String;

    return-object v0
.end method

.method public final zzde()J
    .registers 3

    .line 19
    iget-wide v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->zzlv:J

    return-wide v0
.end method

.method public final zzdf()Landroid/net/Uri;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->zzlw:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzdg()Landroid/net/Uri;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->zzlx:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzdh()Landroid/net/Uri;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->zzly:Landroid/net/Uri;

    return-object v0
.end method
