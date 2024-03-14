.class public final Lcom/google/firebase/auth/internal/zzt;
.super Lcom/google/firebase/auth/MultiFactorResolver;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "DefaultMultiFactorResolverCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/internal/zzt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/util/List;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getPhoneMultiFactorInfoList"
        id = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/PhoneMultiFactorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/firebase/auth/internal/zzy;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getSession"
        id = 0x2
    .end annotation
.end field

.field private final zzc:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getFirebaseAppName"
        id = 0x3
    .end annotation
.end field

.field private final zzd:Lcom/google/firebase/auth/zzc;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getDefaultOAuthCredential"
        id = 0x4
    .end annotation
.end field

.field private final zze:Lcom/google/firebase/auth/internal/zzn;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getReauthUser"
        id = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Lcom/google/firebase/auth/internal/zzv;

    invoke-direct {v0}, Lcom/google/firebase/auth/internal/zzv;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/internal/zzt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/google/firebase/auth/internal/zzy;Ljava/lang/String;Lcom/google/firebase/auth/zzc;Lcom/google/firebase/auth/internal/zzn;)V
    .registers 8
    .param p1    # Ljava/util/List;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/internal/zzy;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Lcom/google/firebase/auth/zzc;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p5    # Lcom/google/firebase/auth/internal/zzn;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/PhoneMultiFactorInfo;",
            ">;",
            "Lcom/google/firebase/auth/internal/zzy;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/zzc;",
            "Lcom/google/firebase/auth/internal/zzn;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/auth/MultiFactorResolver;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzt;->zza:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/MultiFactorInfo;

    .line 4
    instance-of v1, v0, Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    if-eqz v1, :cond_e

    .line 5
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzt;->zza:Ljava/util/List;

    check-cast v0, Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 7
    :cond_26
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/internal/zzy;

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzt;->zzb:Lcom/google/firebase/auth/internal/zzy;

    .line 8
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzt;->zzc:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/google/firebase/auth/internal/zzt;->zzd:Lcom/google/firebase/auth/zzc;

    .line 10
    iput-object p5, p0, Lcom/google/firebase/auth/internal/zzt;->zze:Lcom/google/firebase/auth/internal/zzn;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase_auth/zzej;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/internal/zzt;
    .registers 10
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzej;->zzc()Ljava/util/List;

    move-result-object v0

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/auth/MultiFactorInfo;

    .line 16
    instance-of v3, v1, Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    if-eqz v3, :cond_d

    .line 17
    check-cast v1, Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 22
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzej;->zzc()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzej;->zza()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/google/firebase/auth/internal/zzy;->zza(Ljava/util/List;Ljava/lang/String;)Lcom/google/firebase/auth/internal/zzy;

    move-result-object v3

    .line 24
    new-instance v0, Lcom/google/firebase/auth/internal/zzt;

    .line 25
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->zzb()Lcom/google/firebase/FirebaseApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v4

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzej;->zzb()Lcom/google/firebase/auth/zzc;

    move-result-object v5

    move-object v6, p2

    check-cast v6, Lcom/google/firebase/auth/internal/zzn;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/auth/internal/zzt;-><init>(Ljava/util/List;Lcom/google/firebase/auth/internal/zzy;Ljava/lang/String;Lcom/google/firebase/auth/zzc;Lcom/google/firebase/auth/internal/zzn;)V

    return-object v0
.end method

.method static synthetic zza(Lcom/google/firebase/auth/internal/zzt;)Lcom/google/firebase/auth/zzc;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/google/firebase/auth/internal/zzt;->zzd:Lcom/google/firebase/auth/zzc;

    return-object p0
.end method


# virtual methods
.method public final getFirebaseAuth()Lcom/google/firebase/auth/FirebaseAuth;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzt;->zzc:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    return-object v0
.end method

.method public final getHints()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/MultiFactorInfo;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzt;->zza:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 31
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1b
    return-object v0
.end method

.method public final getSession()Lcom/google/firebase/auth/MultiFactorSession;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzt;->zzb:Lcom/google/firebase/auth/internal/zzy;

    return-object v0
.end method

.method public final resolveSignIn(Lcom/google/firebase/auth/MultiFactorAssertion;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/MultiFactorAssertion;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/google/firebase/auth/MultiFactorResolver;->getFirebaseAuth()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzt;->zzb:Lcom/google/firebase/auth/internal/zzy;

    iget-object v2, p0, Lcom/google/firebase/auth/internal/zzt;->zze:Lcom/google/firebase/auth/internal/zzn;

    .line 35
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/MultiFactorAssertion;Lcom/google/firebase/auth/internal/zzy;Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/auth/internal/zzw;

    invoke-direct {v0, p0}, Lcom/google/firebase/auth/internal/zzw;-><init>(Lcom/google/firebase/auth/internal/zzt;)V

    .line 36
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 40
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 42
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzt;->zza:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 44
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 46
    invoke-virtual {p0}, Lcom/google/firebase/auth/MultiFactorResolver;->getSession()Lcom/google/firebase/auth/MultiFactorSession;

    move-result-object v1

    const/4 v3, 0x2

    .line 47
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 49
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzt;->zzc:Ljava/lang/String;

    const/4 v3, 0x3

    .line 51
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 53
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzt;->zzd:Lcom/google/firebase/auth/zzc;

    const/4 v3, 0x4

    .line 55
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 57
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzt;->zze:Lcom/google/firebase/auth/internal/zzn;

    const/4 v3, 0x5

    .line 59
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 60
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
