.class final Lcom/google/android/gms/common/api/internal/zaal;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.2.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zago:Lcom/google/android/gms/common/api/internal/zaai;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaai;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaal;->zago:Lcom/google/android/gms/common/api/internal/zaai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaal;->zago:Lcom/google/android/gms/common/api/internal/zaai;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaai;->zab(Lcom/google/android/gms/common/api/internal/zaai;)Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaal;->zago:Lcom/google/android/gms/common/api/internal/zaai;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zaai;->zaa(Lcom/google/android/gms/common/api/internal/zaai;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->cancelAvailabilityErrorNotifications(Landroid/content/Context;)V

    return-void
.end method
