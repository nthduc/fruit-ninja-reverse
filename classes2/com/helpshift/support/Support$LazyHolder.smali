.class Lcom/helpshift/support/Support$LazyHolder;
.super Ljava/lang/Object;
.source "Support.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/Support;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/helpshift/support/Support;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1566
    new-instance v0, Lcom/helpshift/support/Support;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpshift/support/Support;-><init>(Lcom/helpshift/support/Support$1;)V

    sput-object v0, Lcom/helpshift/support/Support$LazyHolder;->INSTANCE:Lcom/helpshift/support/Support;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
