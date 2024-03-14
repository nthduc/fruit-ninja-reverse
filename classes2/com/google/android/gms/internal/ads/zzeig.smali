.class public Lcom/google/android/gms/internal/ads/zzeig;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/google/android/gms/internal/ads/zzelj;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzelw<",
        "TMessageType;>;"
    }
.end annotation


# static fields
.field private static final zzief:Lcom/google/android/gms/internal/ads/zzejm;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejm;->zzbft()Lcom/google/android/gms/internal/ads/zzejm;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeig;->zzief:Lcom/google/android/gms/internal/ads/zzejm;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
