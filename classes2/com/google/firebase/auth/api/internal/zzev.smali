.class final Lcom/google/firebase/auth/api/internal/zzev;
.super Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
        "Lcom/google/firebase/auth/api/internal/zzef;",
        "Lcom/google/firebase/auth/api/internal/zzeu;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$Client;
    .registers 14

    .line 2
    move-object v4, p4

    check-cast v4, Lcom/google/firebase/auth/api/internal/zzeu;

    .line 3
    new-instance p4, Lcom/google/firebase/auth/api/internal/zzei;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/auth/api/internal/zzei;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/firebase/auth/api/internal/zzeu;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V

    return-object p4
.end method
