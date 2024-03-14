.class public final Lcom/google/android/gms/internal/firebase_auth/zzem;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/firebase/auth/api/internal/zzel;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "CreateAuthUriResponseCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;",
        "Lcom/google/firebase/auth/api/internal/zzel<",
        "Lcom/google/android/gms/internal/firebase_auth/zzem;",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzb;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/firebase_auth/zzem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getAuthUri"
        id = 0x2
    .end annotation
.end field

.field private zzb:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "isRegistered"
        id = 0x3
    .end annotation
.end field

.field private zzc:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getProviderId"
        id = 0x4
    .end annotation
.end field

.field private zzd:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "isForExistingProvider"
        id = 0x5
    .end annotation
.end field

.field private zze:Lcom/google/android/gms/internal/firebase_auth/zzfw;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getStringList"
        id = 0x6
    .end annotation
.end field

.field private zzf:Ljava/util/List;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getSignInMethods"
        id = 0x7
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzep;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzep;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzfw;->zzb()Lcom/google/android/gms/internal/firebase_auth/zzfw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzem;->zze:Lcom/google/android/gms/internal/firebase_auth/zzfw;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/google/android/gms/internal/firebase_auth/zzfw;Ljava/util/List;)V
    .registers 7
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p2    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p4    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/internal/firebase_auth/zzfw;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/internal/firebase_auth/zzfw;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzem;->zza:Ljava/lang/String;

    .line 6
    iput-boolean p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzem;->zzb:Z

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzem;->zzc:Ljava/lang/String;

    .line 8
    iput-boolean p4, p0, Lcom/google/android/gms/internal/firebase_auth/zzem;->zzd:Z

    if-nez p5, :cond_12

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzfw;->zzb()Lcom/google/android/gms/internal/firebase_auth/zzfw;

    move-result-object p1

    goto :goto_16

    :cond_12
    invoke-static {p5}, Lcom/google/android/gms/internal/firebase_auth/zzfw;->zza(Lcom/google/android/gms/internal/firebase_auth/zzfw;)Lcom/google/android/gms/internal/firebase_auth/zzfw;

    move-result-object p1

    :goto_16
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzem;->zze:Lcom/google/android/gms/internal/firebase_auth/zzfw;

    .line 11
    iput-object p6, p0, Lcom/google/android/gms/internal/firebase_auth/zzem;->zzf:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzem;->zza:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 19
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 21
    iget-boolean v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzem;->zzb:Z

    const/4 v3, 0x3

    .line 22
    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzem;->zzc:Ljava/lang/String;

    const/4 v3, 0x4

    .line 26
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 28
    iget-boolean v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzem;->zzd:Z

    const/4 v3, 0x5

    .line 29
    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzem;->zze:Lcom/google/android/gms/internal/firebase_auth/zzfw;

    const/4 v3, 0x6

    .line 33
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 35
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzem;->zzf:Ljava/util/List;

    const/4 v1, 0x7

    .line 37
    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 38
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Lcom/google/android/gms/internal/firebase_auth/zzjx;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase_auth/zzjx<",
            "Lcom/google/android/gms/internal/firebase_auth/zzp$zzb;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzb;->zzi()Lcom/google/android/gms/internal/firebase_auth/zzjx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/firebase_auth/zzjn;)Lcom/google/firebase/auth/api/internal/zzel;
    .registers 6

    .line 42
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzb;

    if-eqz v0, :cond_56

    .line 44
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzb;

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzb;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzem;->zza:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzb;->zzd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzem;->zzb:Z

    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzb;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzem;->zzc:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzb;->zzf()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzem;->zzd:Z

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzb;->zzc()I

    move-result v0

    if-nez v0, :cond_31

    .line 51
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzfw;->zzb()Lcom/google/android/gms/internal/firebase_auth/zzfw;

    move-result-object v0

    goto :goto_40

    .line 52
    :cond_31
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzfw;

    const/4 v1, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzb;->zzb()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzfw;-><init>(ILjava/util/List;)V

    :goto_40
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzem;->zze:Lcom/google/android/gms/internal/firebase_auth/zzfw;

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzb;->a_()I

    move-result v0

    if-nez v0, :cond_4f

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_53

    :cond_4f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzb;->zzg()Ljava/util/List;

    move-result-object p1

    :goto_53
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzem;->zzf:Ljava/util/List;

    return-object p0

    .line 43
    :cond_56
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The passed proto must be an instance of CreateAuthUriResponse."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb()Ljava/util/List;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzem;->zzf:Ljava/util/List;

    return-object v0
.end method
