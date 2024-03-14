.class public final Lcom/google/firebase/auth/internal/zzh;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/firebase/auth/AuthResult;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "DefaultAuthResultCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/internal/zzh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Lcom/google/firebase/auth/internal/zzn;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getUser"
        id = 0x1
    .end annotation
.end field

.field private zzb:Lcom/google/firebase/auth/internal/zzf;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getAdditionalUserInfo"
        id = 0x2
    .end annotation
.end field

.field private zzc:Lcom/google/firebase/auth/zzc;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getOAuthCredential"
        id = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lcom/google/firebase/auth/internal/zzk;

    invoke-direct {v0}, Lcom/google/firebase/auth/internal/zzk;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/internal/zzh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/auth/internal/zzn;)V
    .registers 8

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/internal/zzn;

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zza:Lcom/google/firebase/auth/internal/zzn;

    .line 8
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zza:Lcom/google/firebase/auth/internal/zzn;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzn;->zzh()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/google/firebase/auth/internal/zzh;->zzb:Lcom/google/firebase/auth/internal/zzf;

    const/4 v1, 0x0

    .line 10
    :goto_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4d

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/auth/internal/zzj;

    invoke-virtual {v2}, Lcom/google/firebase/auth/internal/zzj;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 12
    new-instance v2, Lcom/google/firebase/auth/internal/zzf;

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/auth/internal/zzj;

    invoke-virtual {v3}, Lcom/google/firebase/auth/internal/zzj;->getProviderId()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/auth/internal/zzj;

    invoke-virtual {v4}, Lcom/google/firebase/auth/internal/zzj;->zza()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzn;->zzi()Z

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/firebase/auth/internal/zzf;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/google/firebase/auth/internal/zzh;->zzb:Lcom/google/firebase/auth/internal/zzf;

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 17
    :cond_4d
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzb:Lcom/google/firebase/auth/internal/zzf;

    if-nez v0, :cond_5c

    .line 18
    new-instance v0, Lcom/google/firebase/auth/internal/zzf;

    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzn;->zzi()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/firebase/auth/internal/zzf;-><init>(Z)V

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzb:Lcom/google/firebase/auth/internal/zzf;

    .line 19
    :cond_5c
    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzn;->zzj()Lcom/google/firebase/auth/zzc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzh;->zzc:Lcom/google/firebase/auth/zzc;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/auth/internal/zzn;Lcom/google/firebase/auth/internal/zzf;Lcom/google/firebase/auth/zzc;)V
    .registers 4
    .param p1    # Lcom/google/firebase/auth/internal/zzn;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/internal/zzf;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/zzc;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzh;->zza:Lcom/google/firebase/auth/internal/zzn;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzh;->zzb:Lcom/google/firebase/auth/internal/zzf;

    .line 4
    iput-object p3, p0, Lcom/google/firebase/auth/internal/zzh;->zzc:Lcom/google/firebase/auth/zzc;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getAdditionalUserInfo()Lcom/google/firebase/auth/AdditionalUserInfo;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzb:Lcom/google/firebase/auth/internal/zzf;

    return-object v0
.end method

.method public final getCredential()Lcom/google/firebase/auth/AuthCredential;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zzc:Lcom/google/firebase/auth/zzc;

    return-object v0
.end method

.method public final getUser()Lcom/google/firebase/auth/FirebaseUser;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzh;->zza:Lcom/google/firebase/auth/internal/zzn;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 27
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzh;->getUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 28
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 30
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzh;->getAdditionalUserInfo()Lcom/google/firebase/auth/AdditionalUserInfo;

    move-result-object v1

    const/4 v3, 0x2

    .line 31
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 33
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzh;->zzc:Lcom/google/firebase/auth/zzc;

    const/4 v3, 0x3

    .line 35
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 36
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
