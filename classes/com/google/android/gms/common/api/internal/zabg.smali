.class public final Lcom/google/android/gms/common/api/internal/zabg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.2.1"


# static fields
.field private static final zaip:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/base/zal;->zact()Lcom/google/android/gms/internal/base/zam;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/util/concurrent/NumberedThreadFactory;

    const-string v2, "GAC_Executor"

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/util/concurrent/NumberedThreadFactory;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/google/android/gms/internal/base/zaq;->zasj:I

    const/4 v3, 0x2

    .line 3
    invoke-interface {v0, v3, v1, v2}, Lcom/google/android/gms/internal/base/zam;->zaa(ILjava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/api/internal/zabg;->zaip:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static zabd()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/common/api/internal/zabg;->zaip:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
