.class public Lcom/google/firebase/auth/ActionCodeSettings;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "ActionCodeSettingsCreator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/auth/ActionCodeSettings$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/ActionCodeSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getUrl"
        id = 0x1
    .end annotation
.end field

.field private final zzb:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getIOSBundle"
        id = 0x2
    .end annotation
.end field

.field private final zzc:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getIOSAppStoreId"
        id = 0x3
    .end annotation
.end field

.field private final zzd:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getAndroidPackageName"
        id = 0x4
    .end annotation
.end field

.field private final zze:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getAndroidInstallApp"
        id = 0x5
    .end annotation
.end field

.field private final zzf:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getAndroidMinimumVersion"
        id = 0x6
    .end annotation
.end field

.field private final zzg:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "canHandleCodeInApp"
        id = 0x7
    .end annotation
.end field

.field private zzh:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getLocaleHeader"
        id = 0x8
    .end annotation
.end field

.field private zzi:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getRequestType"
        id = 0x9
    .end annotation
.end field

.field private zzj:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getDynamicLinkDomain"
        id = 0xa
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Lcom/google/firebase/auth/zzb;

    invoke-direct {v0}, Lcom/google/firebase/auth/zzb;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/ActionCodeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/auth/ActionCodeSettings$Builder;)V
    .registers 3

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 14
    invoke-static {p1}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zza(Lcom/google/firebase/auth/ActionCodeSettings$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zza:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zzb(Lcom/google/firebase/auth/ActionCodeSettings$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzb:Ljava/lang/String;

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzc:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zzc(Lcom/google/firebase/auth/ActionCodeSettings$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzd:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zzd(Lcom/google/firebase/auth/ActionCodeSettings$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zze:Z

    .line 21
    invoke-static {p1}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zze(Lcom/google/firebase/auth/ActionCodeSettings$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzf:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zzf(Lcom/google/firebase/auth/ActionCodeSettings$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzg:Z

    .line 23
    invoke-static {p1}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zzg(Lcom/google/firebase/auth/ActionCodeSettings$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzj:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/auth/ActionCodeSettings$Builder;Lcom/google/firebase/auth/zza;)V
    .registers 3

    .line 78
    invoke-direct {p0, p1}, Lcom/google/firebase/auth/ActionCodeSettings;-><init>(Lcom/google/firebase/auth/ActionCodeSettings$Builder;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    .registers 11
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
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p5    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p7    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x8
        .end annotation
    .end param
    .param p9    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x9
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xa
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zza:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzb:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzc:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzd:Ljava/lang/String;

    .line 6
    iput-boolean p5, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zze:Z

    .line 7
    iput-object p6, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzf:Ljava/lang/String;

    .line 8
    iput-boolean p7, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzg:Z

    .line 9
    iput-object p8, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzh:Ljava/lang/String;

    .line 10
    iput p9, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzi:I

    .line 11
    iput-object p10, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzj:Ljava/lang/String;

    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/auth/ActionCodeSettings$Builder;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 40
    new-instance v0, Lcom/google/firebase/auth/ActionCodeSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;-><init>(Lcom/google/firebase/auth/zza;)V

    return-object v0
.end method

.method public static zza()Lcom/google/firebase/auth/ActionCodeSettings;
    .registers 3

    .line 25
    new-instance v0, Lcom/google/firebase/auth/ActionCodeSettings;

    new-instance v1, Lcom/google/firebase/auth/ActionCodeSettings$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;-><init>(Lcom/google/firebase/auth/zza;)V

    invoke-direct {v0, v1}, Lcom/google/firebase/auth/ActionCodeSettings;-><init>(Lcom/google/firebase/auth/ActionCodeSettings$Builder;)V

    return-object v0
.end method


# virtual methods
.method public canHandleCodeInApp()Z
    .registers 2

    .line 32
    iget-boolean v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzg:Z

    return v0
.end method

.method public getAndroidInstallApp()Z
    .registers 2

    .line 30
    iget-boolean v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zze:Z

    return v0
.end method

.method public getAndroidMinimumVersion()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidPackageName()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public getIOSBundle()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 44
    invoke-virtual {p0}, Lcom/google/firebase/auth/ActionCodeSettings;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 45
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 47
    invoke-virtual {p0}, Lcom/google/firebase/auth/ActionCodeSettings;->getIOSBundle()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    .line 48
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 50
    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzc:Ljava/lang/String;

    const/4 v2, 0x3

    .line 52
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 54
    invoke-virtual {p0}, Lcom/google/firebase/auth/ActionCodeSettings;->getAndroidPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    .line 55
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 57
    invoke-virtual {p0}, Lcom/google/firebase/auth/ActionCodeSettings;->getAndroidInstallApp()Z

    move-result v0

    const/4 v2, 0x5

    .line 58
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 60
    invoke-virtual {p0}, Lcom/google/firebase/auth/ActionCodeSettings;->getAndroidMinimumVersion()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    .line 61
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 63
    invoke-virtual {p0}, Lcom/google/firebase/auth/ActionCodeSettings;->canHandleCodeInApp()Z

    move-result v0

    const/4 v2, 0x7

    .line 64
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 66
    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzh:Ljava/lang/String;

    const/16 v2, 0x8

    .line 68
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 70
    iget v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzi:I

    const/16 v2, 0x9

    .line 71
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 73
    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzj:Ljava/lang/String;

    const/16 v2, 0xa

    .line 75
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 76
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzgj;)V
    .registers 2
    .param p1    # Lcom/google/android/gms/internal/firebase_auth/zzgj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzi:I

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    iput-object p1, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzh:Ljava/lang/String;

    return-void
.end method

.method public final zzb()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()I
    .registers 2

    .line 38
    iget v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzi:I

    return v0
.end method

.method public final zze()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings;->zzj:Ljava/lang/String;

    return-object v0
.end method
