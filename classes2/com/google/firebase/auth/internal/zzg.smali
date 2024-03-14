.class public final Lcom/google/firebase/auth/internal/zzg;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/firebase/auth/ActionCodeResult;


# instance fields
.field private final zza:I

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/firebase/auth/ActionCodeInfo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzfm;)V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zzg()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zzc()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zzb()Ljava/lang/String;

    move-result-object v0

    :goto_12
    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzg;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzg;->zzc:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zzh()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-nez v0, :cond_27

    .line 5
    iput v2, p0, Lcom/google/firebase/auth/internal/zzg;->zza:I

    .line 6
    iput-object v1, p0, Lcom/google/firebase/auth/internal/zzg;->zzd:Lcom/google/firebase/auth/ActionCodeInfo;

    return-void

    .line 8
    :cond_27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zzd()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x4

    sparse-switch v4, :sswitch_data_d8

    goto :goto_74

    :sswitch_39
    const-string v4, "RECOVER_EMAIL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    const/4 v3, 0x4

    goto :goto_74

    :sswitch_43
    const-string v4, "EMAIL_SIGNIN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    const/4 v3, 0x2

    goto :goto_74

    :sswitch_4d
    const-string v4, "VERIFY_BEFORE_UPDATE_EMAIL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    const/4 v3, 0x3

    goto :goto_74

    :sswitch_57
    const-string v4, "VERIFY_EMAIL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    const/4 v3, 0x1

    goto :goto_74

    :sswitch_61
    const-string v4, "PASSWORD_RESET"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    const/4 v3, 0x0

    goto :goto_74

    :sswitch_6b
    const-string v4, "REVERT_SECOND_FACTOR_ADDITION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    const/4 v3, 0x5

    :cond_74
    :goto_74
    if-eqz v3, :cond_8c

    if-eq v3, v8, :cond_8a

    if-eq v3, v7, :cond_88

    if-eq v3, v2, :cond_86

    if-eq v3, v9, :cond_84

    if-eq v3, v6, :cond_82

    const/4 v0, 0x3

    goto :goto_8d

    :cond_82
    const/4 v0, 0x6

    goto :goto_8d

    :cond_84
    const/4 v0, 0x2

    goto :goto_8d

    :cond_86
    const/4 v0, 0x5

    goto :goto_8d

    :cond_88
    const/4 v0, 0x4

    goto :goto_8d

    :cond_8a
    const/4 v0, 0x1

    goto :goto_8d

    :cond_8c
    const/4 v0, 0x0

    .line 17
    :goto_8d
    iput v0, p0, Lcom/google/firebase/auth/internal/zzg;->zza:I

    .line 18
    iget v0, p0, Lcom/google/firebase/auth/internal/zzg;->zza:I

    if-eq v0, v9, :cond_d4

    if-ne v0, v2, :cond_96

    goto :goto_d4

    .line 22
    :cond_96
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zzi()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 23
    new-instance v1, Lcom/google/firebase/auth/internal/zzd;

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zzb()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zze()Lcom/google/android/gms/internal/firebase_auth/zzfh;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzat;->zza(Lcom/google/android/gms/internal/firebase_auth/zzfh;)Lcom/google/firebase/auth/MultiFactorInfo;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/google/firebase/auth/internal/zzd;-><init>(Ljava/lang/String;Lcom/google/firebase/auth/MultiFactorInfo;)V

    goto :goto_d1

    .line 27
    :cond_ae
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zzg()Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 28
    new-instance v1, Lcom/google/firebase/auth/internal/zzb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zzc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zzb()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/google/firebase/auth/internal/zzb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d1

    .line 29
    :cond_c2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zzf()Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 30
    new-instance v1, Lcom/google/firebase/auth/internal/zze;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zzb()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/firebase/auth/internal/zze;-><init>(Ljava/lang/String;)V

    .line 32
    :cond_d1
    :goto_d1
    iput-object v1, p0, Lcom/google/firebase/auth/internal/zzg;->zzd:Lcom/google/firebase/auth/ActionCodeInfo;

    return-void

    .line 19
    :cond_d4
    :goto_d4
    iput-object v1, p0, Lcom/google/firebase/auth/internal/zzg;->zzd:Lcom/google/firebase/auth/ActionCodeInfo;

    return-void

    nop

    :sswitch_data_d8
    .sparse-switch
        -0x6fbac124 -> :sswitch_6b
        -0x56916d75 -> :sswitch_61
        -0x4ffacbca -> :sswitch_57
        -0x4cd06780 -> :sswitch_4d
        0x33e669c5 -> :sswitch_43
        0x39d86cc1 -> :sswitch_39
    .end sparse-switch
.end method


# virtual methods
.method public final getData(I)Ljava/lang/String;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 36
    iget v0, p0, Lcom/google/firebase/auth/internal/zzg;->zza:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_7

    return-object v1

    :cond_7
    if-eqz p1, :cond_10

    const/4 v0, 0x1

    if-eq p1, v0, :cond_d

    return-object v1

    .line 40
    :cond_d
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzg;->zzc:Ljava/lang/String;

    return-object p1

    .line 39
    :cond_10
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzg;->zzb:Ljava/lang/String;

    return-object p1
.end method

.method public final getInfo()Lcom/google/firebase/auth/ActionCodeInfo;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzg;->zzd:Lcom/google/firebase/auth/ActionCodeInfo;

    return-object v0
.end method

.method public final getOperation()I
    .registers 2

    .line 34
    iget v0, p0, Lcom/google/firebase/auth/internal/zzg;->zza:I

    return v0
.end method
