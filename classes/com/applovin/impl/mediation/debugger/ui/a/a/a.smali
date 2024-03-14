.class public Lcom/applovin/impl/mediation/debugger/ui/a/a/a;
.super Lcom/applovin/impl/mediation/debugger/a/c;


# instance fields
.field private final f:Lcom/applovin/impl/mediation/debugger/a/d;

.field private final g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/mediation/debugger/a/d;Landroid/content/Context;)V
    .registers 5

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/d;->a()Lcom/applovin/impl/mediation/debugger/a/d$a;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/mediation/debugger/a/d$a;->a:Lcom/applovin/impl/mediation/debugger/a/d$a;

    if-ne v0, v1, :cond_b

    sget-object v0, Lcom/applovin/impl/mediation/debugger/a/c$b;->b:Lcom/applovin/impl/mediation/debugger/a/c$b;

    goto :goto_d

    :cond_b
    sget-object v0, Lcom/applovin/impl/mediation/debugger/a/c$b;->c:Lcom/applovin/impl/mediation/debugger/a/c$b;

    :goto_d
    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/debugger/a/c;-><init>(Lcom/applovin/impl/mediation/debugger/a/c$b;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->f:Lcom/applovin/impl/mediation/debugger/a/d;

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->g:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;I)Landroid/text/SpannedString;
    .registers 4

    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->a(Ljava/lang/String;II)Landroid/text/SpannedString;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;II)Landroid/text/SpannedString;
    .registers 7

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p2

    const/16 v1, 0x21

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance p1, Landroid/text/style/AbsoluteSizeSpan;

    const/4 p2, 0x1

    invoke-direct {p1, p3, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p2

    invoke-virtual {v0, p1, v2, p2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance p1, Landroid/text/SpannedString;

    invoke-direct {p1, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method private n()Landroid/text/SpannedString;
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->f:Lcom/applovin/impl/mediation/debugger/a/d;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/a/d;->d()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->f:Lcom/applovin/impl/mediation/debugger/a/d;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/a/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->f:Lcom/applovin/impl/mediation/debugger/a/d;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/a/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    :cond_2c
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->f:Lcom/applovin/impl/mediation/debugger/a/d;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/a/d;->e()Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "Retrieving SDK Version..."

    goto :goto_39

    :cond_37
    const-string v0, "SDK Found"

    :goto_39
    const v1, -0x777778

    goto :goto_41

    :cond_3d
    const/high16 v1, -0x10000

    const-string v0, "SDK Missing"

    :goto_41
    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->a(Ljava/lang/String;I)Landroid/text/SpannedString;

    move-result-object v0

    return-object v0
.end method

.method private o()Landroid/text/SpannedString;
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->f:Lcom/applovin/impl/mediation/debugger/a/d;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/a/d;->e()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->f:Lcom/applovin/impl/mediation/debugger/a/d;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/a/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->f:Lcom/applovin/impl/mediation/debugger/a/d;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/a/d;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :cond_2c
    const-string v0, "Adapter Found"

    :goto_2e
    const v1, -0x777778

    goto :goto_36

    :cond_32
    const/high16 v1, -0x10000

    const-string v0, "Adapter Missing"

    :goto_36
    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->a(Ljava/lang/String;I)Landroid/text/SpannedString;

    move-result-object v0

    return-object v0
.end method

.method private p()Landroid/text/SpannedString;
    .registers 3

    const-string v0, "Invalid Integration"

    const/high16 v1, -0x10000

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->a(Ljava/lang/String;I)Landroid/text/SpannedString;

    move-result-object v0

    return-object v0
.end method

.method private q()Landroid/text/SpannedString;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Latest Version: Adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->f:Lcom/applovin/impl/mediation/debugger/a/d;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/a/d;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xff

    const/16 v2, 0x7f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->a(Ljava/lang/String;I)Landroid/text/SpannedString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->f:Lcom/applovin/impl/mediation/debugger/a/d;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/a/d;->a()Lcom/applovin/impl/mediation/debugger/a/d$a;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/mediation/debugger/a/d$a;->a:Lcom/applovin/impl/mediation/debugger/a/d$a;

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public c()Landroid/text/SpannedString;
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->b:Landroid/text/SpannedString;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->b:Landroid/text/SpannedString;

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->f:Lcom/applovin/impl/mediation/debugger/a/d;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/a/d;->a()Lcom/applovin/impl/mediation/debugger/a/d$a;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/mediation/debugger/a/d$a;->a:Lcom/applovin/impl/mediation/debugger/a/d$a;

    if-ne v0, v1, :cond_15

    const v0, -0x777778

    goto :goto_17

    :cond_15
    const/high16 v0, -0x1000000

    :goto_17
    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->f:Lcom/applovin/impl/mediation/debugger/a/d;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/a/d;->h()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    invoke-direct {p0, v1, v0, v2}, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->a(Ljava/lang/String;II)Landroid/text/SpannedString;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->b:Landroid/text/SpannedString;

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->b:Landroid/text/SpannedString;

    return-object v0
.end method

.method public d()Landroid/text/SpannedString;
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->c:Landroid/text/SpannedString;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->c:Landroid/text/SpannedString;

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->f:Lcom/applovin/impl/mediation/debugger/a/d;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/a/d;->a()Lcom/applovin/impl/mediation/debugger/a/d$a;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/mediation/debugger/a/d$a;->a:Lcom/applovin/impl/mediation/debugger/a/d$a;

    if-eq v0, v1, :cond_6a

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->n()Landroid/text/SpannedString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const v1, -0x777778

    const-string v2, ", "

    invoke-direct {p0, v2, v1}, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->a(Ljava/lang/String;I)Landroid/text/SpannedString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->o()Landroid/text/SpannedString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->f:Lcom/applovin/impl/mediation/debugger/a/d;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/a/d;->f()Z

    move-result v1

    const-string v2, "\n"

    if-eqz v1, :cond_49

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->q()Landroid/text/SpannedString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_49
    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->f:Lcom/applovin/impl/mediation/debugger/a/d;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/a/d;->a()Lcom/applovin/impl/mediation/debugger/a/d$a;

    move-result-object v1

    sget-object v3, Lcom/applovin/impl/mediation/debugger/a/d$a;->c:Lcom/applovin/impl/mediation/debugger/a/d$a;

    if-ne v1, v3, :cond_62

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->p()Landroid/text/SpannedString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_62
    new-instance v1, Landroid/text/SpannedString;

    invoke-direct {v1, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->c:Landroid/text/SpannedString;

    goto :goto_73

    :cond_6a
    new-instance v0, Landroid/text/SpannedString;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->c:Landroid/text/SpannedString;

    :goto_73
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->c:Landroid/text/SpannedString;

    return-object v0
.end method

.method public i()I
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->f:Lcom/applovin/impl/mediation/debugger/a/d;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/a/d;->l()I

    move-result v0

    if-lez v0, :cond_9

    goto :goto_b

    :cond_9
    sget v0, Lcom/applovin/sdk/R$drawable;->applovin_ic_mediation_placeholder_network:I

    :goto_b
    return v0
.end method

.method public k()I
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/applovin/sdk/R$drawable;->applovin_ic_disclosure_arrow:I

    goto :goto_d

    :cond_9
    invoke-super {p0}, Lcom/applovin/impl/mediation/debugger/a/c;->i()I

    move-result v0

    :goto_d
    return v0
.end method

.method public l()I
    .registers 3

    sget v0, Lcom/applovin/sdk/R$color;->applovin_sdk_disclosureButtonColor:I

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->g:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/f;->a(ILandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public m()Lcom/applovin/impl/mediation/debugger/a/d;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->f:Lcom/applovin/impl/mediation/debugger/a/d;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediatedNetworkListItemViewModel{text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->b:Landroid/text/SpannedString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", detailText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->c:Landroid/text/SpannedString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a/a;->f:Lcom/applovin/impl/mediation/debugger/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
