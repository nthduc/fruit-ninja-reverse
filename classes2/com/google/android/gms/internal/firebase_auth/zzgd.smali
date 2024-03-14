.class public final Lcom/google/android/gms/internal/firebase_auth/zzgd;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/firebase/auth/api/internal/zzfw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/auth/api/internal/zzfw<",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;",
        ">;"
    }
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzgd;->zza:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzgd;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/firebase_auth/zzjn;
    .registers 3

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;->zza()Lcom/google/android/gms/internal/firebase_auth/zzp$zzt$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzgd;->zza:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzt$zza;

    move-result-object v0

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt$zza;->zza(Z)Lcom/google/android/gms/internal/firebase_auth/zzp$zzt$zza;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzgd;->zzb:Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzt$zza;

    .line 11
    :cond_16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzg()Lcom/google/android/gms/internal/firebase_auth/zzjn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzt;

    return-object v0
.end method
