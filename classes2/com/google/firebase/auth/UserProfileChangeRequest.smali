.class public Lcom/google/firebase/auth/UserProfileChangeRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "UserProfileChangeRequestCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/UserProfileChangeRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getDisplayName"
        id = 0x2
    .end annotation
.end field

.field private zzb:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getPhotoUrl"
        id = 0x3
    .end annotation
.end field

.field private zzc:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "shouldRemoveDisplayName"
        id = 0x4
    .end annotation
.end field

.field private zzd:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "shouldRemovePhotoUri"
        id = 0x5
    .end annotation
.end field

.field private zze:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Lcom/google/firebase/auth/zzab;

    invoke-direct {v0}, Lcom/google/firebase/auth/zzab;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/UserProfileChangeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 5
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
    .param p4    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zza:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzb:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzc:Z

    .line 5
    iput-boolean p4, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzd:Z

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x0

    goto :goto_17

    :cond_13
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_17
    iput-object p1, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zze:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoUri()Landroid/net/Uri;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zze:Landroid/net/Uri;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 16
    invoke-virtual {p0}, Lcom/google/firebase/auth/UserProfileChangeRequest;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 17
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 19
    iget-object v0, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzb:Ljava/lang/String;

    const/4 v2, 0x3

    .line 21
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 23
    iget-boolean v0, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzc:Z

    const/4 v1, 0x4

    .line 24
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 26
    iget-boolean v0, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzd:Z

    const/4 v1, 0x5

    .line 27
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 28
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Z
    .registers 2

    .line 11
    iget-boolean v0, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzc:Z

    return v0
.end method

.method public final zzc()Z
    .registers 2

    .line 12
    iget-boolean v0, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzd:Z

    return v0
.end method
