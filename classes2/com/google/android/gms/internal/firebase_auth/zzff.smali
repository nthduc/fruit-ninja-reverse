.class public final Lcom/google/android/gms/internal/firebase_auth/zzff;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/firebase/auth/api/internal/zzel;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "GetTokenResponseCreator"
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
        "Lcom/google/android/gms/internal/firebase_auth/zzff;",
        "Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/firebase_auth/zzff;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getRefreshToken"
        id = 0x2
    .end annotation
.end field

.field private zzb:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getAccessToken"
        id = 0x3
    .end annotation
.end field

.field private zzc:Ljava/lang/Long;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getExpiresIn"
        id = 0x4
    .end annotation
.end field

.field private zzd:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getTokenType"
        id = 0x5
    .end annotation
.end field

.field private zze:Ljava/lang/Long;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getIssuedAt"
        id = 0x6
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzfe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzfe;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzff;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zze:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .registers 13

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/firebase_auth/zzff;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 6
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
    .param p3    # Ljava/lang/Long;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p5    # Ljava/lang/Long;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zza:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzb:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzc:Ljava/lang/Long;

    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzd:Ljava/lang/String;

    .line 11
    iput-object p5, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zze:Ljava/lang/Long;

    return-void
.end method

.method public static zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzff;
    .registers 6

    .line 57
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    new-instance p0, Lcom/google/android/gms/internal/firebase_auth/zzff;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzff;-><init>()V

    const-string v1, "refresh_token"

    const/4 v2, 0x0

    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zza:Ljava/lang/String;

    const-string v1, "access_token"

    .line 60
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzb:Ljava/lang/String;

    const-string v1, "expires_in"

    .line 61
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzc:Ljava/lang/Long;

    const-string v1, "token_type"

    .line 62
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzd:Ljava/lang/String;

    const-string v1, "issued_at"

    .line 63
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zze:Ljava/lang/Long;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3b} :catch_3c

    return-object p0

    :catch_3c
    move-exception p0

    const-string v0, "GetTokenResponse"

    const-string v1, "Failed to read GetTokenResponse from JSONObject"

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v0, Lcom/google/firebase/auth/api/zza;

    invoke-direct {v0, p0}, Lcom/google/firebase/auth/api/zza;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zza:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 28
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzb:Ljava/lang/String;

    const/4 v2, 0x3

    .line 32
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzff;->zze()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x4

    .line 35
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLongObject(Landroid/os/Parcel;ILjava/lang/Long;Z)V

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzd:Ljava/lang/String;

    const/4 v2, 0x5

    .line 39
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zze:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 42
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x6

    .line 43
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLongObject(Landroid/os/Parcel;ILjava/lang/Long;Z)V

    .line 44
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Lcom/google/android/gms/internal/firebase_auth/zzjx;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase_auth/zzjx<",
            "Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;->zzf()Lcom/google/android/gms/internal/firebase_auth/zzjx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/firebase_auth/zzjn;)Lcom/google/firebase/auth/api/internal/zzel;
    .registers 4

    .line 69
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;

    if-eqz v0, :cond_39

    .line 71
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;

    .line 72
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zza:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzb:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzc:Ljava/lang/Long;

    .line 75
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;->zzd()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzd:Ljava/lang/String;

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zze:Ljava/lang/Long;

    return-object p0

    .line 70
    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The passed proto must be an instance of GrantTokenResponse."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Ljava/lang/String;)V
    .registers 2

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zza:Ljava/lang/String;

    return-void
.end method

.method public final zzb()Z
    .registers 7

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zze:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzc:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    .line 14
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-gez v4, :cond_23

    const/4 v0, 0x1

    return v0

    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()J
    .registers 3

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzc:Ljava/lang/Long;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzf()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzg()J
    .registers 3

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zze:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzh()Ljava/lang/String;
    .registers 4

    .line 47
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "refresh_token"

    .line 48
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "access_token"

    .line 49
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "expires_in"

    .line 50
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzc:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "token_type"

    .line 51
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "issued_at"

    .line 52
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzff;->zze:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2c} :catch_2d

    return-object v0

    :catch_2d
    move-exception v0

    const-string v1, "GetTokenResponse"

    const-string v2, "Failed to convert GetTokenResponse to JSON"

    .line 55
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v1, Lcom/google/firebase/auth/api/zza;

    invoke-direct {v1, v0}, Lcom/google/firebase/auth/api/zza;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
