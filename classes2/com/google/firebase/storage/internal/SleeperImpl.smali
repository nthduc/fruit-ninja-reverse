.class public Lcom/google/firebase/storage/internal/SleeperImpl;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-storage@@19.1.1"

# interfaces
.implements Lcom/google/firebase/storage/internal/Sleeper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sleep(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    int-to-long v0, p1

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    return-void
.end method
