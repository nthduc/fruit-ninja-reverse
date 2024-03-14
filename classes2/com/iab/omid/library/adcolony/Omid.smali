.class public final Lcom/iab/omid/library/adcolony/Omid;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/iab/omid/library/adcolony/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/iab/omid/library/adcolony/b;

    invoke-direct {v0}, Lcom/iab/omid/library/adcolony/b;-><init>()V

    sput-object v0, Lcom/iab/omid/library/adcolony/Omid;->a:Lcom/iab/omid/library/adcolony/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activate(Landroid/content/Context;)V
    .registers 2

    sget-object v0, Lcom/iab/omid/library/adcolony/Omid;->a:Lcom/iab/omid/library/adcolony/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/iab/omid/library/adcolony/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/iab/omid/library/adcolony/Omid;->a:Lcom/iab/omid/library/adcolony/b;

    invoke-virtual {v0}, Lcom/iab/omid/library/adcolony/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isActive()Z
    .registers 1

    sget-object v0, Lcom/iab/omid/library/adcolony/Omid;->a:Lcom/iab/omid/library/adcolony/b;

    invoke-virtual {v0}, Lcom/iab/omid/library/adcolony/b;->b()Z

    move-result v0

    return v0
.end method
