.class public final Lcom/google/android/gms/internal/firebase_auth/zzew;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "GetAccountInfoUserCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/firebase_auth/zzew;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getLocalId"
        id = 0x2
    .end annotation
.end field

.field private zzb:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getEmail"
        id = 0x3
    .end annotation
.end field

.field private zzc:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "isEmailVerified"
        id = 0x4
    .end annotation
.end field

.field private zzd:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getDisplayName"
        id = 0x5
    .end annotation
.end field

.field private zze:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getPhotoUrl"
        id = 0x6
    .end annotation
.end field

.field private zzf:Lcom/google/android/gms/internal/firebase_auth/zzfl;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getProviderInfoList"
        id = 0x7
    .end annotation
.end field

.field private zzg:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getPassword"
        id = 0x8
    .end annotation
.end field

.field private zzh:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getPhoneNumber"
        id = 0x9
    .end annotation
.end field

.field private zzi:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getCreationTimestamp"
        id = 0xa
    .end annotation
.end field

.field private zzj:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getLastSignInTimestamp"
        id = 0xb
    .end annotation
.end field

.field private zzk:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "isNewUser"
        id = 0xc
    .end annotation
.end field

.field private zzl:Lcom/google/firebase/auth/zzc;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getDefaultOAuthCredential"
        id = 0xd
    .end annotation
.end field

.field private zzm:Ljava/util/List;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getMfaInfoList"
        id = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase_auth/zzfh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 107
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzez;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzez;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzew;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzfl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzfl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzf:Lcom/google/android/gms/internal/firebase_auth/zzfl;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase_auth/zzfl;Ljava/lang/String;Ljava/lang/String;JJZLcom/google/firebase/auth/zzc;Ljava/util/List;)V
    .registers 16
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p3    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/internal/firebase_auth/zzfl;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x8
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x9
        .end annotation
    .end param
    .param p9    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xa
        .end annotation
    .end param
    .param p11    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xb
        .end annotation
    .end param
    .param p13    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xc
        .end annotation
    .end param
    .param p14    # Lcom/google/firebase/auth/zzc;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xd
        .end annotation
    .end param
    .param p15    # Ljava/util/List;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xe
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/firebase_auth/zzfl;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJZ",
            "Lcom/google/firebase/auth/zzc;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase_auth/zzfh;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zza:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzb:Ljava/lang/String;

    .line 7
    iput-boolean p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzc:Z

    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzd:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zze:Ljava/lang/String;

    if-nez p6, :cond_15

    .line 12
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzfl;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_auth/zzfl;-><init>()V

    goto :goto_19

    .line 14
    :cond_15
    invoke-static {p6}, Lcom/google/android/gms/internal/firebase_auth/zzfl;->zza(Lcom/google/android/gms/internal/firebase_auth/zzfl;)Lcom/google/android/gms/internal/firebase_auth/zzfl;

    move-result-object p1

    :goto_19
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzf:Lcom/google/android/gms/internal/firebase_auth/zzfl;

    .line 15
    iput-object p7, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzg:Ljava/lang/String;

    .line 16
    iput-object p8, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzh:Ljava/lang/String;

    .line 17
    iput-wide p9, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzi:J

    .line 18
    iput-wide p11, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzj:J

    .line 19
    iput-boolean p13, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzk:Z

    .line 20
    iput-object p14, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzl:Lcom/google/firebase/auth/zzc;

    if-nez p15, :cond_2d

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzbg;->zza()Lcom/google/android/gms/internal/firebase_auth/zzbg;

    move-result-object p15

    :cond_2d
    iput-object p15, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzm:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    .line 56
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 58
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zza:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 60
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 62
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzb:Ljava/lang/String;

    const/4 v3, 0x3

    .line 64
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 66
    iget-boolean v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzc:Z

    const/4 v3, 0x4

    .line 67
    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 69
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzd:Ljava/lang/String;

    const/4 v3, 0x5

    .line 71
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 73
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zze:Ljava/lang/String;

    const/4 v3, 0x6

    .line 75
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 77
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzf:Lcom/google/android/gms/internal/firebase_auth/zzfl;

    const/4 v3, 0x7

    .line 79
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 81
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzg:Ljava/lang/String;

    const/16 v3, 0x8

    .line 83
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 85
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzh:Ljava/lang/String;

    const/16 v3, 0x9

    .line 87
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 89
    iget-wide v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzi:J

    const/16 v1, 0xa

    .line 90
    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 92
    iget-wide v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzj:J

    const/16 v1, 0xb

    .line 93
    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 95
    iget-boolean v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzk:Z

    const/16 v3, 0xc

    .line 96
    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 98
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzl:Lcom/google/firebase/auth/zzc;

    const/16 v3, 0xd

    .line 100
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 102
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzm:Ljava/util/List;

    const/16 v1, 0xe

    .line 104
    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 105
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza(Lcom/google/firebase/auth/zzc;)Lcom/google/android/gms/internal/firebase_auth/zzew;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzl:Lcom/google/firebase/auth/zzc;

    return-object p0
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzew;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public final zza(Ljava/util/List;)Lcom/google/android/gms/internal/firebase_auth/zzew;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase_auth/zzfj;",
            ">;)",
            "Lcom/google/android/gms/internal/firebase_auth/zzew;"
        }
    .end annotation

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzfl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzfl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzf:Lcom/google/android/gms/internal/firebase_auth/zzfl;

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzf:Lcom/google/android/gms/internal/firebase_auth/zzfl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzfl;->zza()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final zza(Z)Lcom/google/android/gms/internal/firebase_auth/zzew;
    .registers 2

    .line 47
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzk:Z

    return-object p0
.end method

.method public final zza()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzew;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method public final zzb()Z
    .registers 2

    .line 24
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzc:Z

    return v0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzew;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zze:Ljava/lang/String;

    return-object p0
.end method

.method public final zzc()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzew;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 40
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzg:Ljava/lang/String;

    return-object p0
.end method

.method public final zzd()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Landroid/net/Uri;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zze:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zze:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public final zzg()J
    .registers 3

    .line 31
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzi:J

    return-wide v0
.end method

.method public final zzh()J
    .registers 3

    .line 32
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzj:J

    return-wide v0
.end method

.method public final zzi()Z
    .registers 2

    .line 33
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzk:Z

    return v0
.end method

.method public final zzj()Ljava/util/List;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase_auth/zzfj;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzf:Lcom/google/android/gms/internal/firebase_auth/zzfl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzfl;->zza()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzk()Lcom/google/android/gms/internal/firebase_auth/zzfl;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzf:Lcom/google/android/gms/internal/firebase_auth/zzfl;

    return-object v0
.end method

.method public final zzl()Lcom/google/firebase/auth/zzc;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzl:Lcom/google/firebase/auth/zzc;

    return-object v0
.end method

.method public final zzm()Ljava/util/List;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase_auth/zzfh;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzm:Ljava/util/List;

    return-object v0
.end method
