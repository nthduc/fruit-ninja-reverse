.class final Lcom/google/android/gms/internal/firebase_auth/zzgk;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzij;


# static fields
.field static final zza:Lcom/google/android/gms/internal/firebase_auth/zzij;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzgk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzgk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgk;->zza:Lcom/google/android/gms/internal/firebase_auth/zzij;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .registers 2

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzgj;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method
