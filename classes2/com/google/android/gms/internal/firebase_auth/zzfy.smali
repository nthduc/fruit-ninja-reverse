.class public final Lcom/google/android/gms/internal/firebase_auth/zzfy;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/firebase/auth/api/internal/zzfw;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "VerifyAssertionRequestCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;",
        "Lcom/google/firebase/auth/api/internal/zzfw<",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/firebase_auth/zzfy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getRequestUri"
        id = 0x2
    .end annotation
.end field

.field private zzb:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getCurrentIdToken"
        id = 0x3
    .end annotation
.end field

.field private zzc:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getIdToken"
        id = 0x4
    .end annotation
.end field

.field private zzd:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getAccessToken"
        id = 0x5
    .end annotation
.end field

.field private zze:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getProviderId"
        id = 0x6
    .end annotation
.end field

.field private zzf:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getEmail"
        id = 0x7
    .end annotation
.end field

.field private zzg:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getPostBody"
        id = 0x8
    .end annotation
.end field

.field private zzh:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getOauthTokenSecret"
        id = 0x9
    .end annotation
.end field

.field private zzi:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getReturnSecureToken"
        id = 0xa
    .end annotation
.end field

.field private zzj:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getAutoCreate"
        id = 0xb
    .end annotation
.end field

.field private zzk:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getAuthCode"
        id = 0xc
    .end annotation
.end field

.field private zzl:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getSessionId"
        id = 0xd
    .end annotation
.end field

.field private zzm:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getIdpResponseUrl"
        id = 0xe
    .end annotation
.end field

.field private zzn:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getTenantId"
        id = 0xf
    .end annotation
.end field

.field private zzo:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getReturnIdpCredential"
        id = 0x10
    .end annotation
.end field

.field private zzp:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getPendingToken"
        id = 0x11
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 148
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzgb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzgb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzi:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzj:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const-string p4, "http://localhost"

    .line 24
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zza:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzc:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzd:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzh:Ljava/lang/String;

    .line 28
    iput-object p6, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzk:Ljava/lang/String;

    .line 29
    iput-object p7, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzn:Ljava/lang/String;

    .line 30
    iput-object p8, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzp:Ljava/lang/String;

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzi:Z

    .line 32
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzc:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_37

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzd:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_37

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzk:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2f

    goto :goto_37

    .line 33
    :cond_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "idToken, accessToken and authCode cannot all be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_37
    :goto_37
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zze:Ljava/lang/String;

    const/4 p2, 0x0

    .line 35
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzf:Ljava/lang/String;

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzc:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string p4, "&"

    if-nez p3, :cond_5c

    const-string p3, "id_token="

    .line 38
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzc:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    :cond_5c
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzd:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_71

    const-string p3, "access_token="

    .line 40
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzd:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    :cond_71
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzf:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_86

    const-string p3, "identifier="

    .line 42
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzf:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :cond_86
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzh:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_9b

    const-string p3, "oauth_token_secret="

    .line 44
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzh:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :cond_9b
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzk:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_b0

    const-string p3, "code="

    .line 46
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzk:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :cond_b0
    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_c1

    const-string p3, "nonce="

    .line 48
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c1
    const-string p3, "providerId="

    .line 49
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zze:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzg:Ljava/lang/String;

    .line 51
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzj:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 19
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
    .param p3    # Ljava/lang/String;
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
    .param p6    # Ljava/lang/String;
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
    .param p9    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xa
        .end annotation
    .end param
    .param p10    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xb
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xc
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xd
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xe
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xf
        .end annotation
    .end param
    .param p15    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x10
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x11
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    move-object v0, p0

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    move-object v1, p1

    .line 6
    iput-object v1, v0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zza:Ljava/lang/String;

    move-object v1, p2

    .line 7
    iput-object v1, v0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzb:Ljava/lang/String;

    move-object v1, p3

    .line 8
    iput-object v1, v0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzc:Ljava/lang/String;

    move-object v1, p4

    .line 9
    iput-object v1, v0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzd:Ljava/lang/String;

    move-object v1, p5

    .line 10
    iput-object v1, v0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zze:Ljava/lang/String;

    move-object v1, p6

    .line 11
    iput-object v1, v0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzf:Ljava/lang/String;

    move-object v1, p7

    .line 12
    iput-object v1, v0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzg:Ljava/lang/String;

    move-object v1, p8

    .line 13
    iput-object v1, v0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzh:Ljava/lang/String;

    move v1, p9

    .line 14
    iput-boolean v1, v0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzi:Z

    move v1, p10

    .line 15
    iput-boolean v1, v0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzj:Z

    move-object v1, p11

    .line 16
    iput-object v1, v0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzk:Ljava/lang/String;

    move-object v1, p12

    .line 17
    iput-object v1, v0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzl:Ljava/lang/String;

    move-object v1, p13

    .line 18
    iput-object v1, v0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzm:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 19
    iput-object v1, v0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzn:Ljava/lang/String;

    move/from16 v1, p15

    .line 20
    iput-boolean v1, v0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzo:Z

    move-object/from16 v1, p16

    .line 21
    iput-object v1, v0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 64
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zza:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 68
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzb:Ljava/lang/String;

    const/4 v2, 0x3

    .line 72
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 74
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzc:Ljava/lang/String;

    const/4 v2, 0x4

    .line 76
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzd:Ljava/lang/String;

    const/4 v2, 0x5

    .line 80
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zze:Ljava/lang/String;

    const/4 v2, 0x6

    .line 84
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzf:Ljava/lang/String;

    const/4 v2, 0x7

    .line 88
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzg:Ljava/lang/String;

    const/16 v2, 0x8

    .line 92
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzh:Ljava/lang/String;

    const/16 v2, 0x9

    .line 96
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 98
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzi:Z

    const/16 v2, 0xa

    .line 99
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 101
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzj:Z

    const/16 v2, 0xb

    .line 102
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzk:Ljava/lang/String;

    const/16 v2, 0xc

    .line 106
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzl:Ljava/lang/String;

    const/16 v2, 0xd

    .line 110
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzm:Ljava/lang/String;

    const/16 v2, 0xe

    .line 114
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzn:Ljava/lang/String;

    const/16 v2, 0xf

    .line 118
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 120
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzo:Z

    const/16 v2, 0x10

    .line 121
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzp:Ljava/lang/String;

    const/16 v2, 0x11

    .line 125
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 126
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfy;
    .registers 2

    .line 53
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public final zza(Z)Lcom/google/android/gms/internal/firebase_auth/zzfy;
    .registers 2

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzj:Z

    return-object p0
.end method

.method public final synthetic zza()Lcom/google/android/gms/internal/firebase_auth/zzjn;
    .registers 3

    .line 129
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zza()Lcom/google/android/gms/internal/firebase_auth/zzp$zzr$zza;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzi:Z

    .line 130
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr$zza;->zza(Z)Lcom/google/android/gms/internal/firebase_auth/zzp$zzr$zza;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzj:Z

    .line 131
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr$zza;->zzc(Z)Lcom/google/android/gms/internal/firebase_auth/zzp$zzr$zza;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzb:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 133
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr$zza;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzr$zza;

    .line 134
    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zza:Ljava/lang/String;

    if-eqz v1, :cond_1e

    .line 135
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzr$zza;

    .line 136
    :cond_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzg:Ljava/lang/String;

    if-eqz v1, :cond_25

    .line 137
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzr$zza;

    .line 138
    :cond_25
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzn:Ljava/lang/String;

    if-eqz v1, :cond_2c

    .line 139
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr$zza;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzr$zza;

    .line 140
    :cond_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzp:Ljava/lang/String;

    if-eqz v1, :cond_33

    .line 141
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr$zza;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzr$zza;

    .line 142
    :cond_33
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 143
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr$zza;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzr$zza;

    .line 144
    :cond_40
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzm:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 145
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzr$zza;

    .line 146
    :cond_4d
    iget-boolean v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzo:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr$zza;->zzb(Z)Lcom/google/android/gms/internal/firebase_auth/zzp$zzr$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzg()Lcom/google/android/gms/internal/firebase_auth/zzjn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfy;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzn:Ljava/lang/String;

    return-object p0
.end method

.method public final zzb(Z)Lcom/google/android/gms/internal/firebase_auth/zzfy;
    .registers 2

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzi:Z

    return-object p0
.end method

.method public final zzc(Z)Lcom/google/android/gms/internal/firebase_auth/zzfy;
    .registers 2

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfy;->zzo:Z

    return-object p0
.end method
