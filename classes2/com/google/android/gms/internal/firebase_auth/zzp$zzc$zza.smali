.class public final Lcom/google/android/gms/internal/firebase_auth/zzp$zzc$zza;
.super Lcom/google/android/gms/internal/firebase_auth/zzif$zza;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzjp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_auth/zzp$zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_auth/zzif$zza<",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzc;",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzc$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_auth/zzjp;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzc;->zzb()Lcom/google/android/gms/internal/firebase_auth/zzp$zzc;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzo;)V
    .registers 2

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzc$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzc$zza;
    .registers 3

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzb:Z

    .line 7
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzc$zza;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzc;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzc;->zza(Lcom/google/android/gms/internal/firebase_auth/zzp$zzc;Ljava/lang/String;)V

    return-object p0
.end method
