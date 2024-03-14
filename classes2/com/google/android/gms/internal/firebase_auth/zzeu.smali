.class public final Lcom/google/android/gms/internal/firebase_auth/zzeu;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/firebase/auth/api/internal/zzel;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "GetAccountInfoResponseCreator"
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
        "Lcom/google/android/gms/internal/firebase_auth/zzeu;",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzg;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/firebase_auth/zzeu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Lcom/google/android/gms/internal/firebase_auth/zzey;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getUserList"
        id = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzex;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzex;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzeu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzey;)V
    .registers 2
    .param p1    # Lcom/google/android/gms/internal/firebase_auth/zzey;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    if-nez p1, :cond_b

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzey;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_auth/zzey;-><init>()V

    goto :goto_f

    .line 6
    :cond_b
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzey;->zza(Lcom/google/android/gms/internal/firebase_auth/zzey;)Lcom/google/android/gms/internal/firebase_auth/zzey;

    move-result-object p1

    :goto_f
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzeu;->zza:Lcom/google/android/gms/internal/firebase_auth/zzey;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzeu;->zza:Lcom/google/android/gms/internal/firebase_auth/zzey;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 14
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 15
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Lcom/google/android/gms/internal/firebase_auth/zzjx;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase_auth/zzjx<",
            "Lcom/google/android/gms/internal/firebase_auth/zzp$zzg;",
            ">;"
        }
    .end annotation

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzg;->zzb()Lcom/google/android/gms/internal/firebase_auth/zzjx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/firebase_auth/zzjn;)Lcom/google/firebase/auth/api/internal/zzel;
    .registers 3

    .line 19
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzg;

    if-eqz v0, :cond_1b

    .line 21
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzg;

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzg;->zza()I

    move-result v0

    if-nez v0, :cond_14

    .line 24
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzey;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_auth/zzey;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzeu;->zza:Lcom/google/android/gms/internal/firebase_auth/zzey;

    goto :goto_1a

    .line 26
    :cond_14
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzey;->zza(Lcom/google/android/gms/internal/firebase_auth/zzp$zzg;)Lcom/google/android/gms/internal/firebase_auth/zzey;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzeu;->zza:Lcom/google/android/gms/internal/firebase_auth/zzey;

    :goto_1a
    return-object p0

    .line 20
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The passed proto must be an instance of GetAccountInfoResponse."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase_auth/zzew;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzeu;->zza:Lcom/google/android/gms/internal/firebase_auth/zzey;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzey;->zza()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
