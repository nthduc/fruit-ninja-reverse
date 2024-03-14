.class public final Lcom/google/android/gms/internal/ads/zzeox;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeos;
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeos<",
        "TT;>;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zziur:Lcom/google/android/gms/internal/ads/zzeox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeox<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzedi:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeox;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeox;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeox;->zziur:Lcom/google/android/gms/internal/ads/zzeox;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeox;->zzedi:Ljava/lang/Object;

    return-void
.end method

.method public static zzba(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzeoy;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/ads/zzeoy<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeox;

    const-string v1, "instance cannot be null"

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeox;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static zzbb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzeoy;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/ads/zzeoy<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_5

    .line 3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzeox;->zziur:Lcom/google/android/gms/internal/ads/zzeox;

    return-object p0

    .line 5
    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeox;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeox;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeox;->zzedi:Ljava/lang/Object;

    return-object v0
.end method
