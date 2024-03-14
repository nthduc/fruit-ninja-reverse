.class final Lcom/google/android/gms/common/api/internal/zacf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.2.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zagv:Lcom/google/android/gms/signin/internal/zam;

.field private final synthetic zakp:Lcom/google/android/gms/common/api/internal/zace;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zace;Lcom/google/android/gms/signin/internal/zam;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacf;->zakp:Lcom/google/android/gms/common/api/internal/zace;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zacf;->zagv:Lcom/google/android/gms/signin/internal/zam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacf;->zakp:Lcom/google/android/gms/common/api/internal/zace;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacf;->zagv:Lcom/google/android/gms/signin/internal/zam;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zace;->zaa(Lcom/google/android/gms/common/api/internal/zace;Lcom/google/android/gms/signin/internal/zam;)V

    return-void
.end method
