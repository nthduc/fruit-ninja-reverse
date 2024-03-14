.class final synthetic Lcom/google/android/gms/internal/ads/zzazo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzebn:Lcom/google/android/gms/internal/ads/zzazp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzazp;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzebn:Lcom/google/android/gms/internal/ads/zzazp;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzebn:Lcom/google/android/gms/internal/ads/zzazp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazp;->zzye()V

    return-void
.end method
