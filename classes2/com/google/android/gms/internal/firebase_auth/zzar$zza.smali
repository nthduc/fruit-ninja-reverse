.class final Lcom/google/android/gms/internal/firebase_auth/zzar$zza;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzas;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_auth/zzar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zza"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzat;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzar$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzal;
    .registers 3

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzan;

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzan;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0
.end method
