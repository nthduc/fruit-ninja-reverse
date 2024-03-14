.class final Lcom/google/android/gms/common/api/internal/zaam;
.super Lcom/google/android/gms/common/api/internal/zabf;
.source "com.google.android.gms:play-services-base@@17.2.1"


# instance fields
.field private final synthetic zagp:Lcom/google/android/gms/common/ConnectionResult;

.field private final synthetic zagq:Lcom/google/android/gms/common/api/internal/zaan;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaan;Lcom/google/android/gms/common/api/internal/zabd;Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaam;->zagq:Lcom/google/android/gms/common/api/internal/zaan;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zaam;->zagp:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/zabf;-><init>(Lcom/google/android/gms/common/api/internal/zabd;)V

    return-void
.end method


# virtual methods
.method public final zaak()V
    .registers 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaam;->zagq:Lcom/google/android/gms/common/api/internal/zaan;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaan;->zago:Lcom/google/android/gms/common/api/internal/zaai;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaam;->zagp:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zaai;->zaa(Lcom/google/android/gms/common/api/internal/zaai;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
