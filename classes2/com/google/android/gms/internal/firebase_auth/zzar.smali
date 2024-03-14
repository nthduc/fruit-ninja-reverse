.class final Lcom/google/android/gms/internal/firebase_auth/zzar;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_auth/zzar$zza;
    }
.end annotation


# static fields
.field private static final zza:Ljava/util/logging/Logger;

.field private static final zzb:Lcom/google/android/gms/internal/firebase_auth/zzas;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 4
    const-class v0, Lcom/google/android/gms/internal/firebase_auth/zzar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzar;->zza:Ljava/util/logging/Logger;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzar$zza;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzar$zza;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzat;)V

    .line 6
    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzar;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzas;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzal;
    .registers 2

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzav;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzar;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzas;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzas;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzal;

    move-result-object p0

    return-object p0
.end method
