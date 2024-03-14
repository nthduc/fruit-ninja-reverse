.class public final Lcom/google/android/gms/internal/firebase_auth/zzfu;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/firebase/auth/api/internal/zzfw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/auth/api/internal/zzfw<",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzp;",
        ">;"
    }
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzd:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfu;->zzd:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfu;->zza:Ljava/lang/String;

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfu;->zzb:Ljava/lang/String;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfu;->zzc:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase_auth/zzfu;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/firebase_auth/zzjn;
    .registers 3

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzp;->zza()Lcom/google/android/gms/internal/firebase_auth/zzp$zzp$zza;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfu;->zza:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzp$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzp$zza;

    .line 14
    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfu;->zzb:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzp$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzp$zza;

    .line 16
    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfu;->zzd:Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzp$zza;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzp$zza;

    .line 18
    :cond_19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->zzg()Lcom/google/android/gms/internal/firebase_auth/zzjn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzif;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzp;

    return-object v0
.end method
