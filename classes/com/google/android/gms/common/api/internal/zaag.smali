.class final Lcom/google/android/gms/common/api/internal/zaag;
.super Lcom/google/android/gms/common/api/internal/zabf;
.source "com.google.android.gms:play-services-base@@17.2.1"


# instance fields
.field private final synthetic zafx:Lcom/google/android/gms/common/api/internal/zaah;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaah;Lcom/google/android/gms/common/api/internal/zabd;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaag;->zafx:Lcom/google/android/gms/common/api/internal/zaah;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/zabf;-><init>(Lcom/google/android/gms/common/api/internal/zabd;)V

    return-void
.end method


# virtual methods
.method public final zaak()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zafx:Lcom/google/android/gms/common/api/internal/zaah;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zaah;->onConnectionSuspended(I)V

    return-void
.end method
