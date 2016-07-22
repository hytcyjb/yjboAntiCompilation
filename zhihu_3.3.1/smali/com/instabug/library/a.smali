.class public Lcom/instabug/library/a;
.super Ljava/lang/Object;
.source "InstabugAnnotationScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/instabug/library/view/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/a$a;
    }
.end annotation


# instance fields
.field a:Z

.field private final b:Lcom/instabug/library/c;

.field private c:Lcom/instabug/library/f/a;

.field private d:Lcom/instabug/library/view/AnnotationView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/FrameLayout;

.field private g:Landroid/widget/FrameLayout;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/ProgressBar;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/app/ProgressDialog;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/instabug/library/c;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instabug/library/a;->a:Z

    .line 71
    iput-object p1, p0, Lcom/instabug/library/a;->b:Lcom/instabug/library/c;

    .line 72
    return-void
.end method

.method private A()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 274
    iget-object v0, p0, Lcom/instabug/library/a;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f80

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 278
    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 279
    iget-object v1, p0, Lcom/instabug/library/a;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 280
    iget-object v0, p0, Lcom/instabug/library/a;->f:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/instabug/library/a;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 282
    const-string v0, "input_method"

    invoke-direct {p0, v0}, Lcom/instabug/library/a;->i(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 283
    iget-object v1, p0, Lcom/instabug/library/a;->b:Lcom/instabug/library/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/instabug/library/a;->b:Lcom/instabug/library/c;

    invoke-interface {v1}, Lcom/instabug/library/c;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/instabug/library/a;->b:Lcom/instabug/library/c;

    invoke-interface {v1}, Lcom/instabug/library/c;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 287
    :cond_0
    return-void
.end method

.method private B()V
    .locals 3

    .prologue
    .line 313
    iget-object v0, p0, Lcom/instabug/library/a;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 314
    iget-object v0, p0, Lcom/instabug/library/a;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->performClick()Z

    .line 315
    const-string v0, "input_method"

    invoke-direct {p0, v0}, Lcom/instabug/library/a;->i(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 316
    iget-object v1, p0, Lcom/instabug/library/a;->l:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 317
    return-void
.end method

.method private C()V
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/instabug/library/a;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 321
    iget-object v0, p0, Lcom/instabug/library/a;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->performClick()Z

    .line 322
    const-string v0, "input_method"

    invoke-direct {p0, v0}, Lcom/instabug/library/a;->i(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 323
    iget-object v1, p0, Lcom/instabug/library/a;->k:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 324
    return-void
.end method

.method private D()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 331
    iget-object v0, p0, Lcom/instabug/library/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 332
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f80

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 335
    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 336
    iget-object v1, p0, Lcom/instabug/library/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 337
    iget-object v0, p0, Lcom/instabug/library/a;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 339
    :cond_0
    return-void
.end method

.method private E()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 342
    iget-object v0, p0, Lcom/instabug/library/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    .line 343
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f80

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 346
    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 347
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 348
    iget-object v1, p0, Lcom/instabug/library/a;->e:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 349
    iget-object v1, p0, Lcom/instabug/library/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 351
    :cond_0
    return-void
.end method

.method private F()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/instabug/library/a;->c:Lcom/instabug/library/f/a;

    invoke-virtual {v0}, Lcom/instabug/library/f/a;->c()V

    .line 355
    return-void
.end method

.method private G()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/instabug/library/a;->b:Lcom/instabug/library/c;

    invoke-interface {v0}, Lcom/instabug/library/c;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private H()Lcom/instabug/library/internal/e/a;
    .locals 2

    .prologue
    .line 516
    new-instance v0, Lcom/instabug/library/internal/e/b;

    invoke-direct {v0}, Lcom/instabug/library/internal/e/b;-><init>()V

    iget-object v1, p0, Lcom/instabug/library/a;->b:Lcom/instabug/library/c;

    invoke-interface {v1}, Lcom/instabug/library/c;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/e/b;->a(Landroid/app/Activity;)Lcom/instabug/library/internal/e/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/instabug/library/a;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/instabug/library/a;->A()V

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/a;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/instabug/library/a;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lcom/instabug/library/internal/e/a;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 123
    iget-object v0, p0, Lcom/instabug/library/a;->b:Lcom/instabug/library/c;

    invoke-interface {v0, p1}, Lcom/instabug/library/c;->a(Lcom/instabug/library/internal/e/a;)V

    .line 124
    iget-object v0, p0, Lcom/instabug/library/a;->e:Landroid/widget/LinearLayout;

    iget-object v1, p1, Lcom/instabug/library/internal/e/a;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    invoke-static {}, Lcom/instabug/library/Instabug;->a()Lcom/instabug/library/Instabug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/Instabug;->f()Lcom/instabug/library/b/d$a;

    move-result-object v2

    .line 136
    const-string v1, "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"

    .line 137
    sget v0, Lcom/instabug/library/b$e;->instabug_logo:I

    invoke-direct {p0, v0}, Lcom/instabug/library/a;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instabug/library/a;->o:Landroid/widget/ImageView;

    .line 139
    if-eqz v2, :cond_3

    .line 140
    sget v0, Lcom/instabug/library/b$e;->instabug_composer_internal_layout:I

    invoke-direct {p0, v0}, Lcom/instabug/library/a;->c(I)Landroid/view/View;

    move-result-object v0

    iget v3, v2, Lcom/instabug/library/b/d$a;->a:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 141
    iget-object v0, p0, Lcom/instabug/library/a;->i:Landroid/view/View;

    iget v3, v2, Lcom/instabug/library/b/d$a;->c:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 142
    iget-object v0, p0, Lcom/instabug/library/a;->l:Landroid/widget/EditText;

    iget v3, v2, Lcom/instabug/library/b/d$a;->b:I

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 143
    iget-object v0, p0, Lcom/instabug/library/a;->l:Landroid/widget/EditText;

    iget v3, v2, Lcom/instabug/library/b/d$a;->c:I

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 144
    iget-object v0, p0, Lcom/instabug/library/a;->k:Landroid/widget/EditText;

    iget v3, v2, Lcom/instabug/library/b/d$a;->c:I

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 145
    iget-object v0, p0, Lcom/instabug/library/a;->k:Landroid/widget/EditText;

    iget v3, v2, Lcom/instabug/library/b/d$a;->b:I

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 147
    iget v0, v2, Lcom/instabug/library/b/d$a;->a:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    const-string v0, "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"

    .line 154
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v4}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 155
    array-length v1, v0

    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/instabug/library/a;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 159
    sget v0, Lcom/instabug/library/b$e;->instabug_pbi_text:I

    invoke-direct {p0, v0}, Lcom/instabug/library/a;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instabug/library/a;->n:Landroid/widget/TextView;

    .line 160
    iget-object v0, p0, Lcom/instabug/library/a;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    const-string v1, "&name&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    const-string v1, "&name&"

    const-string v2, "Instabug"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 165
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    :cond_0
    const-string v0, "Feedback Powered by Instabug"

    .line 172
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/instabug/library/a;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    return-void

    .line 169
    :cond_2
    const-string v0, "Feedback Powered by Instabug"

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x4

    .line 547
    if-eqz p1, :cond_0

    const-string v0, "white_label"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/instabug/library/a;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/instabug/library/a;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 551
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/instabug/library/a;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/instabug/library/a;->g:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private c(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/instabug/library/a;->b:Lcom/instabug/library/c;

    invoke-interface {v0}, Lcom/instabug/library/c;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/instabug/library/a;)Lcom/instabug/library/view/AnnotationView;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/instabug/library/a;->d:Lcom/instabug/library/view/AnnotationView;

    return-object v0
.end method

.method private i(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 327
    iget-object v0, p0, Lcom/instabug/library/a;->b:Lcom/instabug/library/c;

    invoke-interface {v0}, Lcom/instabug/library/c;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private z()V
    .locals 2

    .prologue
    .line 203
    sget v0, Lcom/instabug/library/b$e;->annotation_view:I

    invoke-direct {p0, v0}, Lcom/instabug/library/a;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/view/AnnotationView;

    iput-object v0, p0, Lcom/instabug/library/a;->d:Lcom/instabug/library/view/AnnotationView;

    .line 204
    sget v0, Lcom/instabug/library/b$e;->instabug_lyt_color_picker:I

    invoke-direct {p0, v0}, Lcom/instabug/library/a;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/instabug/library/a;->e:Landroid/widget/LinearLayout;

    .line 205
    sget v0, Lcom/instabug/library/b$e;->instabug_composer_layout:I

    invoke-direct {p0, v0}, Lcom/instabug/library/a;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/instabug/library/a;->f:Landroid/widget/FrameLayout;

    .line 206
    sget v0, Lcom/instabug/library/b$e;->progress_spinner:I

    invoke-direct {p0, v0}, Lcom/instabug/library/a;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/instabug/library/a;->j:Landroid/widget/ProgressBar;

    .line 207
    sget v0, Lcom/instabug/library/b$e;->user_email:I

    invoke-direct {p0, v0}, Lcom/instabug/library/a;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instabug/library/a;->k:Landroid/widget/EditText;

    .line 208
    sget v0, Lcom/instabug/library/b$e;->email_separator:I

    invoke-direct {p0, v0}, Lcom/instabug/library/a;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/a;->i:Landroid/view/View;

    .line 209
    sget v0, Lcom/instabug/library/b$e;->text_composer:I

    invoke-direct {p0, v0}, Lcom/instabug/library/a;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instabug/library/a;->l:Landroid/widget/EditText;

    .line 210
    iget-object v0, p0, Lcom/instabug/library/a;->l:Landroid/widget/EditText;

    invoke-static {}, Lcom/instabug/library/Instabug;->a()Lcom/instabug/library/Instabug;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/Instabug;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 211
    sget v0, Lcom/instabug/library/b$e;->annotation_view_holder:I

    invoke-direct {p0, v0}, Lcom/instabug/library/a;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/instabug/library/a;->g:Landroid/widget/FrameLayout;

    .line 213
    iget-object v0, p0, Lcom/instabug/library/a;->k:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 214
    iget-object v0, p0, Lcom/instabug/library/a;->l:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 216
    iget-object v0, p0, Lcom/instabug/library/a;->f:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/instabug/library/e;

    invoke-direct {v1, p0}, Lcom/instabug/library/e;-><init>(Lcom/instabug/library/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    sget v0, Lcom/instabug/library/b$e;->color_blue_button:I

    invoke-direct {p0, v0}, Lcom/instabug/library/a;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    sget v0, Lcom/instabug/library/b$e;->color_red_button:I

    invoke-direct {p0, v0}, Lcom/instabug/library/a;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    sget v0, Lcom/instabug/library/b$e;->color_green_button:I

    invoke-direct {p0, v0}, Lcom/instabug/library/a;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    sget v0, Lcom/instabug/library/b$e;->color_gray_button:I

    invoke-direct {p0, v0}, Lcom/instabug/library/a;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    sget v0, Lcom/instabug/library/b$e;->color_yellow_button:I

    invoke-direct {p0, v0}, Lcom/instabug/library/a;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    sget v0, Lcom/instabug/library/b$e;->color_orange_button:I

    invoke-direct {p0, v0}, Lcom/instabug/library/a;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    const v6, -0xff5551

    .line 81
    iget-object v0, p0, Lcom/instabug/library/a;->b:Lcom/instabug/library/c;

    invoke-interface {v0}, Lcom/instabug/library/c;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/Instabug$a;->b(Landroid/app/Activity;)V

    .line 82
    iget-object v0, p0, Lcom/instabug/library/a;->b:Lcom/instabug/library/c;

    invoke-interface {v0}, Lcom/instabug/library/c;->a()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/instabug/library/b$f;->instabug_activity_annotation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 83
    invoke-direct {p0}, Lcom/instabug/library/a;->z()V

    .line 84
    new-instance v2, Lcom/instabug/library/c/c;

    invoke-static {}, Lcom/instabug/library/Instabug;->a()Lcom/instabug/library/Instabug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/Instabug;->j()Lcom/instabug/library/Instabug$a;

    move-result-object v0

    iget-object v0, v0, Lcom/instabug/library/Instabug$a;->a:Lcom/instabug/library/Instabug;

    invoke-static {v0}, Lcom/instabug/library/Instabug;->a(Lcom/instabug/library/Instabug;)Lcom/instabug/library/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/g;->b()Lcom/instabug/library/internal/storage/o;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/instabug/library/c/c;-><init>(Lcom/instabug/library/internal/storage/o;)V

    .line 85
    new-instance v0, Lcom/instabug/library/internal/a/a;

    iget-object v1, p0, Lcom/instabug/library/a;->b:Lcom/instabug/library/c;

    invoke-interface {v1}, Lcom/instabug/library/c;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instabug/library/internal/a/a;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-static {}, Lcom/instabug/library/Instabug;->a()Lcom/instabug/library/Instabug;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/Instabug;->k()Lcom/instabug/library/t;

    move-result-object v1

    .line 88
    invoke-static {}, Lcom/instabug/library/Instabug;->a()Lcom/instabug/library/Instabug;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instabug/library/Instabug;->j()Lcom/instabug/library/Instabug$a;

    move-result-object v3

    iget-object v3, v3, Lcom/instabug/library/Instabug$a;->a:Lcom/instabug/library/Instabug;

    invoke-static {v3}, Lcom/instabug/library/Instabug;->a(Lcom/instabug/library/Instabug;)Lcom/instabug/library/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instabug/library/g;->k()Lcom/instabug/library/d;

    move-result-object v3

    .line 86
    invoke-static {v1, v3, v0}, Lcom/instabug/library/e/b;->a(Lcom/instabug/library/t;Lcom/instabug/library/d;Lcom/instabug/library/internal/a/a;)Lcom/instabug/library/e/b;

    move-result-object v4

    .line 89
    new-instance v5, Lcom/instabug/library/internal/storage/a;

    iget-object v0, p0, Lcom/instabug/library/a;->b:Lcom/instabug/library/c;

    invoke-interface {v0}, Lcom/instabug/library/c;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/instabug/library/internal/storage/a;-><init>(Landroid/content/Context;)V

    .line 90
    new-instance v0, Lcom/instabug/library/f/a;

    invoke-static {}, Lcom/instabug/library/Instabug;->a()Lcom/instabug/library/Instabug;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/Instabug;->k()Lcom/instabug/library/t;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/instabug/library/f/a;-><init>(Lcom/instabug/library/view/a;Lcom/instabug/library/c/c;Lcom/instabug/library/t;Lcom/instabug/library/e/b;Lcom/instabug/library/internal/storage/a;)V

    iput-object v0, p0, Lcom/instabug/library/a;->c:Lcom/instabug/library/f/a;

    .line 93
    invoke-direct {p0}, Lcom/instabug/library/a;->G()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.instabug.load_own_theme"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    invoke-direct {p0}, Lcom/instabug/library/a;->H()Lcom/instabug/library/internal/e/a;

    move-result-object v0

    .line 109
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/instabug/library/a;->b:Lcom/instabug/library/c;

    invoke-interface {v1}, Lcom/instabug/library/c;->c()V

    .line 110
    invoke-direct {p0, v0}, Lcom/instabug/library/a;->a(Lcom/instabug/library/internal/e/a;)V

    .line 112
    invoke-static {}, Lcom/instabug/library/Instabug;->a()Lcom/instabug/library/Instabug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/Instabug;->k()Lcom/instabug/library/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/t;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    invoke-static {}, Lcom/instabug/library/Instabug;->a()Lcom/instabug/library/Instabug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/Instabug;->k()Lcom/instabug/library/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/t;->o()V

    .line 114
    invoke-static {}, Lcom/instabug/library/Instabug;->a()Lcom/instabug/library/Instabug;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/a;->b:Lcom/instabug/library/c;

    invoke-interface {v1}, Lcom/instabug/library/c;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/Instabug;->d(Landroid/app/Activity;)V

    .line 117
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/instabug/library/a;->b:Lcom/instabug/library/c;

    invoke-interface {v0}, Lcom/instabug/library/c;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/instabug/library/a;->b:Lcom/instabug/library/c;

    invoke-interface {v0}, Lcom/instabug/library/c;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    :goto_1
    const-string v2, "com.instabug.library.settings"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    new-instance v0, Lcom/instabug/library/a$a;

    invoke-direct {v0, v8}, Lcom/instabug/library/a$a;-><init>(B)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v8

    aput-object p0, v2, v9

    invoke-virtual {v0, v2}, Lcom/instabug/library/a$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 119
    return-void

    .line 96
    :cond_2
    invoke-static {}, Lcom/instabug/library/Instabug;->a()Lcom/instabug/library/Instabug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/Instabug;->j()Lcom/instabug/library/Instabug$a;

    move-result-object v0

    iget-object v0, v0, Lcom/instabug/library/Instabug$a;->a:Lcom/instabug/library/Instabug;

    invoke-static {v0}, Lcom/instabug/library/Instabug;->a(Lcom/instabug/library/Instabug;)Lcom/instabug/library/g;

    invoke-static {}, Lcom/instabug/library/g;->a()Lcom/instabug/library/internal/e/a;

    move-result-object v0

    .line 98
    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/instabug/library/internal/e/a;

    invoke-direct {v0}, Lcom/instabug/library/internal/e/a;-><init>()V

    .line 101
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x333334

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, v0, Lcom/instabug/library/internal/e/a;->a:Landroid/graphics/drawable/Drawable;

    .line 102
    iput v7, v0, Lcom/instabug/library/internal/e/a;->d:I

    .line 103
    iput v7, v0, Lcom/instabug/library/internal/e/a;->f:I

    .line 104
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, v0, Lcom/instabug/library/internal/e/a;->b:Landroid/graphics/drawable/Drawable;

    .line 105
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, v0, Lcom/instabug/library/internal/e/a;->c:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/instabug/library/a;->b:Lcom/instabug/library/c;

    invoke-interface {v0}, Lcom/instabug/library/c;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 386
    iget-object v0, p0, Lcom/instabug/library/a;->d:Lcom/instabug/library/view/AnnotationView;

    invoke-virtual {v0, p1}, Lcom/instabug/library/view/AnnotationView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 387
    iget-object v0, p0, Lcom/instabug/library/a;->d:Lcom/instabug/library/view/AnnotationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instabug/library/view/AnnotationView;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/instabug/library/a;->j:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/instabug/library/a;->d:Lcom/instabug/library/view/AnnotationView;

    new-instance v1, Lcom/instabug/library/f;

    invoke-direct {v1, p0}, Lcom/instabug/library/f;-><init>(Lcom/instabug/library/a;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/view/AnnotationView;->post(Ljava/lang/Runnable;)Z

    .line 398
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/instabug/library/a;->b:Lcom/instabug/library/c;

    invoke-interface {v0, p1}, Lcom/instabug/library/c;->a(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 408
    if-eqz p1, :cond_0

    .line 409
    iget-object v0, p0, Lcom/instabug/library/a;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/instabug/library/a;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 415
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/a;->k:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/instabug/library/a;->i:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(I)Z
    .locals 8
    .parameter

    .prologue
    .line 194
    const-wide/high16 v0, 0x3ff0

    const-wide v2, 0x3fd322d0e5604189L

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide v4, 0x3fe2c8b439581062L

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide v4, 0x3fbd2f1a9fbe76c9L

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide v4, 0x406fe00000000000L

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    .line 195
    const-wide/high16 v2, 0x3fe0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 196
    const/4 v0, 0x0

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/instabug/library/a;->c:Lcom/instabug/library/f/a;

    invoke-virtual {v0}, Lcom/instabug/library/f/a;->b()V

    .line 178
    iget-object v0, p0, Lcom/instabug/library/a;->m:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/library/a;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/library/a;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 181
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/instabug/library/a;->d:Lcom/instabug/library/view/AnnotationView;

    invoke-virtual {v0}, Lcom/instabug/library/view/AnnotationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 182
    iget-object v0, p0, Lcom/instabug/library/a;->d:Lcom/instabug/library/view/AnnotationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instabug/library/view/AnnotationView;->setDrawingCacheEnabled(Z)V

    .line 183
    iget-object v0, p0, Lcom/instabug/library/a;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 184
    iget-object v0, p0, Lcom/instabug/library/a;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 185
    iget-object v0, p0, Lcom/instabug/library/a;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 186
    iget-object v0, p0, Lcom/instabug/library/a;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 187
    iget-object v0, p0, Lcom/instabug/library/a;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 371
    iget-object v0, p0, Lcom/instabug/library/a;->b:Lcom/instabug/library/c;

    invoke-interface {v0, p1}, Lcom/instabug/library/c;->a(I)V

    .line 372
    iget-object v0, p0, Lcom/instabug/library/a;->d:Lcom/instabug/library/view/AnnotationView;

    invoke-virtual {v0, p1}, Lcom/instabug/library/view/AnnotationView;->a(I)V

    .line 373
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 419
    iget-object v0, p0, Lcom/instabug/library/a;->k:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 420
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/instabug/library/a;->d:Lcom/instabug/library/view/AnnotationView;

    invoke-virtual {v0}, Lcom/instabug/library/view/AnnotationView;->a()V

    .line 233
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 429
    iget-object v0, p0, Lcom/instabug/library/a;->k:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 430
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/instabug/library/a;->c:Lcom/instabug/library/f/a;

    invoke-virtual {v0}, Lcom/instabug/library/f/a;->c()V

    .line 267
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 439
    iget-object v0, p0, Lcom/instabug/library/a;->l:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 440
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/instabug/library/a;->c:Lcom/instabug/library/f/a;

    invoke-virtual {v0}, Lcom/instabug/library/f/a;->d()V

    .line 271
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 449
    invoke-virtual {p0}, Lcom/instabug/library/a;->f()V

    .line 450
    iget-object v0, p0, Lcom/instabug/library/a;->b:Lcom/instabug/library/c;

    invoke-interface {v0}, Lcom/instabug/library/c;->a()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 451
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 452
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 453
    iget-object v0, p0, Lcom/instabug/library/a;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 454
    return-void
.end method

.method public f()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 290
    iget-object v0, p0, Lcom/instabug/library/a;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    .line 291
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f80

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 294
    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 295
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 296
    iget-object v1, p0, Lcom/instabug/library/a;->f:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 297
    iget-object v1, p0, Lcom/instabug/library/a;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 299
    invoke-static {}, Lcom/instabug/library/Instabug;->a()Lcom/instabug/library/Instabug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/Instabug;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 301
    invoke-static {}, Lcom/instabug/library/Instabug;->a()Lcom/instabug/library/Instabug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/Instabug;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/instabug/library/Instabug;->a()Lcom/instabug/library/Instabug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/Instabug;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/a;->k:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 302
    :cond_0
    invoke-direct {p0}, Lcom/instabug/library/a;->C()V

    .line 310
    :cond_1
    :goto_0
    return-void

    .line 304
    :cond_2
    invoke-direct {p0}, Lcom/instabug/library/a;->B()V

    goto :goto_0

    .line 307
    :cond_3
    invoke-direct {p0}, Lcom/instabug/library/a;->B()V

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 458
    invoke-virtual {p0}, Lcom/instabug/library/a;->f()V

    .line 459
    iget-object v0, p0, Lcom/instabug/library/a;->b:Lcom/instabug/library/c;

    invoke-interface {v0}, Lcom/instabug/library/c;->a()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 460
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 461
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 462
    iget-object v0, p0, Lcom/instabug/library/a;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 463
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/instabug/library/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 359
    invoke-direct {p0}, Lcom/instabug/library/a;->E()V

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-direct {p0}, Lcom/instabug/library/a;->D()V

    goto :goto_0
.end method

.method public g(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 467
    iget-object v0, p0, Lcom/instabug/library/a;->b:Lcom/instabug/library/c;

    invoke-interface {v0}, Lcom/instabug/library/c;->a()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v2, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/a;->m:Landroid/app/ProgressDialog;

    .line 468
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/instabug/library/a;->G()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instabug.snapshot_file_path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 478
    iget-object v0, p0, Lcom/instabug/library/a;->m:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/library/a;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/library/a;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/a;->b:Lcom/instabug/library/c;

    invoke-interface {v0}, Lcom/instabug/library/c;->a()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 480
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 481
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 482
    iget-object v0, p0, Lcom/instabug/library/a;->b:Lcom/instabug/library/c;

    invoke-interface {v0}, Lcom/instabug/library/c;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 483
    return-void
.end method

.method public i()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/instabug/library/a;->d:Lcom/instabug/library/view/AnnotationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instabug/library/view/AnnotationView;->setDrawingCacheEnabled(Z)V

    .line 403
    iget-object v0, p0, Lcom/instabug/library/a;->d:Lcom/instabug/library/view/AnnotationView;

    invoke-virtual {v0}, Lcom/instabug/library/view/AnnotationView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/instabug/library/a;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/instabug/library/a;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/instabug/library/a;->m:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/library/a;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/library/a;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/a;->b:Lcom/instabug/library/c;

    invoke-interface {v0}, Lcom/instabug/library/c;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 474
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/instabug/library/a;->c:Lcom/instabug/library/f/a;

    invoke-virtual {v0}, Lcom/instabug/library/f/a;->a()V

    .line 504
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/instabug/library/a;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 508
    invoke-direct {p0}, Lcom/instabug/library/a;->A()V

    .line 513
    :goto_0
    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/a;->c:Lcom/instabug/library/f/a;

    invoke-virtual {v0}, Lcom/instabug/library/f/a;->d()V

    goto :goto_0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 554
    sget v0, Lcom/instabug/library/b$e;->instabug_titlebar:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 245
    invoke-direct {p0}, Lcom/instabug/library/a;->D()V

    .line 246
    sget v0, Lcom/instabug/library/b$c;->instabug_annotation_color_blue:I

    .line 247
    sget v2, Lcom/instabug/library/b$e;->color_blue_button:I

    if-ne v1, v2, :cond_1

    .line 248
    sget v0, Lcom/instabug/library/b$c;->instabug_annotation_color_blue:I

    .line 261
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/instabug/library/a;->c:Lcom/instabug/library/f/a;

    invoke-virtual {v1, v0}, Lcom/instabug/library/f/a;->a(I)V

    .line 263
    return-void

    .line 249
    :cond_1
    sget v2, Lcom/instabug/library/b$e;->color_red_button:I

    if-ne v1, v2, :cond_2

    .line 250
    sget v0, Lcom/instabug/library/b$c;->instabug_annotation_color_red:I

    goto :goto_0

    .line 251
    :cond_2
    sget v2, Lcom/instabug/library/b$e;->color_green_button:I

    if-ne v1, v2, :cond_3

    .line 252
    sget v0, Lcom/instabug/library/b$c;->instabug_annotation_color_green:I

    goto :goto_0

    .line 253
    :cond_3
    sget v2, Lcom/instabug/library/b$e;->color_gray_button:I

    if-ne v1, v2, :cond_4

    .line 254
    sget v0, Lcom/instabug/library/b$c;->instabug_annotation_color_gray:I

    goto :goto_0

    .line 255
    :cond_4
    sget v2, Lcom/instabug/library/b$e;->color_yellow_button:I

    if-ne v1, v2, :cond_5

    .line 256
    sget v0, Lcom/instabug/library/b$c;->instabug_annotation_color_yellow:I

    goto :goto_0

    .line 257
    :cond_5
    sget v2, Lcom/instabug/library/b$e;->color_orange_button:I

    if-ne v1, v2, :cond_0

    .line 258
    sget v0, Lcom/instabug/library/b$c;->instabug_annotation_color_orange:I

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 489
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 490
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instabug/library/a;->a:Z

    .line 493
    :cond_0
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 494
    invoke-direct {p0}, Lcom/instabug/library/a;->F()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :cond_1
    :goto_0
    return v2

    .line 496
    :catch_0
    move-exception v0

    .line 497
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 558
    sget v0, Lcom/instabug/library/b$f;->instabug_lyt_top_bar:I

    return v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 562
    sget v0, Lcom/instabug/library/b$e;->instabug_top_bar_toolbar:I

    return v0
.end method

.method public r()I
    .locals 1

    .prologue
    .line 566
    sget v0, Lcom/instabug/library/b$e;->instabug_toolbar:I

    return v0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 573
    sget v0, Lcom/instabug/library/b$f;->instabug_lyt_bottom_bar:I

    return v0
.end method

.method public t()I
    .locals 1

    .prologue
    .line 589
    sget v0, Lcom/instabug/library/b$e;->instabug_action_cancel:I

    return v0
.end method

.method public u()I
    .locals 1

    .prologue
    .line 593
    sget v0, Lcom/instabug/library/b$e;->instabug_action_send:I

    return v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 597
    sget v0, Lcom/instabug/library/b$e;->instabug_action_pick_color:I

    return v0
.end method

.method public w()I
    .locals 1

    .prologue
    .line 601
    sget v0, Lcom/instabug/library/b$e;->instabug_action_open_composer:I

    return v0
.end method

.method public x()I
    .locals 1

    .prologue
    .line 605
    sget v0, Lcom/instabug/library/b$e;->instabug_action_clear_annotations:I

    return v0
.end method

.method public y()I
    .locals 1

    .prologue
    .line 609
    sget v0, Lcom/instabug/library/b$e;->instabug_brush_stroke:I

    return v0
.end method
