.class final synthetic Lcom/google/android/gms/games/zzaf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final zzbl:Ljava/lang/String;

.field private final zzbn:I

.field private final zzbo:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/zzaf;->zzbl:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/games/zzaf;->zzbn:I

    iput p3, p0, Lcom/google/android/gms/games/zzaf;->zzbo:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/zzaf;->zzbl:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/games/zzaf;->zzbn:I

    iget v2, p0, Lcom/google/android/gms/games/zzaf;->zzbo:I

    check-cast p1, Lcom/google/android/gms/games/internal/zzf;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/google/android/gms/games/internal/zzf;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;II)V

    return-void
.end method
