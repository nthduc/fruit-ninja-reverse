.class public Lcom/google/android/gms/games/AnnotatedData;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@20.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zze:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Z)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/games/AnnotatedData;->data:Ljava/lang/Object;

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/games/AnnotatedData;->zze:Z

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/games/AnnotatedData;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public isStale()Z
    .registers 2

    .line 6
    iget-boolean v0, p0, Lcom/google/android/gms/games/AnnotatedData;->zze:Z

    return v0
.end method
