.class public final Lcom/google/android/gms/internal/firebase_auth/zzed;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "UpdateProfileAidlRequestCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/firebase_auth/zzed;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Lcom/google/firebase/auth/UserProfileChangeRequest;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getUserProfileChangeRequest"
        id = 0x1
    .end annotation
.end field

.field private final zzb:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getCachedState"
        id = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzeg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzeg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzed;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/auth/UserProfileChangeRequest;Ljava/lang/String;)V
    .registers 3
    .param p1    # Lcom/google/firebase/auth/UserProfileChangeRequest;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzed;->zza:Lcom/google/firebase/auth/UserProfileChangeRequest;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzed;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzed;->zza:Lcom/google/firebase/auth/UserProfileChangeRequest;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 12
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 14
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzed;->zzb:Ljava/lang/String;

    const/4 v1, 0x2

    .line 16
    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 17
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Lcom/google/firebase/auth/UserProfileChangeRequest;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzed;->zza:Lcom/google/firebase/auth/UserProfileChangeRequest;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzed;->zzb:Ljava/lang/String;

    return-object v0
.end method
