.class public final Lcom/google/android/gms/internal/ads/zzbpj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzbgj;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfqp:Lcom/google/android/gms/internal/ads/zzbot;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbot;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpj;->zzfqp:Lcom/google/android/gms/internal/ads/zzbot;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpj;->zzfqp:Lcom/google/android/gms/internal/ads/zzbot;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbot;->zzahl()Lcom/google/android/gms/internal/ads/zzbgj;

    move-result-object v0

    return-object v0
.end method
