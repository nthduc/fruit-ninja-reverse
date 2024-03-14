.class public final Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;
.super Lcom/google/android/gms/internal/firebase_auth/zzgo;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_auth/zzif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/internal/firebase_auth/zzif<",
        "TT;*>;>",
        "Lcom/google/android/gms/internal/firebase_auth/zzgo<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase_auth/zzif;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzif;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzgo;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/firebase_auth/zzhh;Lcom/google/android/gms/internal/firebase_auth/zzhs;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase_auth/zzin;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;->zza:Lcom/google/android/gms/internal/firebase_auth/zzif;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(Lcom/google/android/gms/internal/firebase_auth/zzif;Lcom/google/android/gms/internal/firebase_auth/zzhh;Lcom/google/android/gms/internal/firebase_auth/zzhs;)Lcom/google/android/gms/internal/firebase_auth/zzif;

    move-result-object p1

    return-object p1
.end method
