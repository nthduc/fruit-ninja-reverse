.class final synthetic Lcom/google/android/gms/games/zzaj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final zzbl:Ljava/lang/String;

.field private final zzbm:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/zzaj;->zzbl:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/games/zzaj;->zzbm:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/zzaj;->zzbl:Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/android/gms/games/zzaj;->zzbm:J

    check-cast p1, Lcom/google/android/gms/games/internal/zzf;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/google/android/gms/games/internal/zzf;->submitScore(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
