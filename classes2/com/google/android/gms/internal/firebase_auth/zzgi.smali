.class public final Lcom/google/android/gms/internal/firebase_auth/zzgi;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/firebase/auth/api/internal/zzel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/auth/api/internal/zzel<",
        "Lcom/google/android/gms/internal/firebase_auth/zzgi;",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;",
        ">;"
    }
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:J

.field private zzd:Ljava/lang/String;

.field private zze:Z

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:J

.field private zzi:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/firebase_auth/zzjx;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase_auth/zzjx<",
            "Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;",
            ">;"
        }
    .end annotation

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zzj()Lcom/google/android/gms/internal/firebase_auth/zzjx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/firebase_auth/zzjn;)Lcom/google/firebase/auth/api/internal/zzel;
    .registers 4

    .line 10
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;

    if-eqz v0, :cond_51

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzgi;->zza:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzgi;->zzb:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zzc()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzgi;->zzc:J

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zzd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzgi;->zzd:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zze()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzgi;->zze:Z

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzgi;->zzf:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zzg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzgi;->zzg:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->g_()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzgi;->zzh:J

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zzi()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzgi;->zzi:Ljava/lang/String;

    return-object p0

    .line 11
    :cond_51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The passed proto must be an instance of verifyPhoneNumberResponse."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzgi;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzgi;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()J
    .registers 3

    .line 4
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzgi;->zzc:J

    return-wide v0
.end method

.method public final zze()Z
    .registers 2

    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzgi;->zze:Z

    return v0
.end method

.method public final zzf()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzgi;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzgi;->zzi:Ljava/lang/String;

    return-object v0
.end method
