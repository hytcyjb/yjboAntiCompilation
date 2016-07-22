.class public Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "BtsHourMinuteDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/ui/component/BtsHourMinuteDialog$TimePickerCallback;
    }
.end annotation


# instance fields
.field clickListener:Landroid/view/View$OnClickListener;

.field private mBtnCancel:Landroid/widget/TextView;

.field private mBtnConfirm:Landroid/widget/TextView;

.field private mEndHour:I

.field private mPicker:Lcom/didi/beatles/ui/component/BtsHourMinutePicker;

.field private mSelectedHour:I

.field private mSelectedMinute:I

.field private mSetOnce:Z

.field private mStartHour:I

.field private mType:I

.field onClick:Landroid/view/View$OnClickListener;

.field onKeyDown:Landroid/content/DialogInterface$OnKeyListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 99
    new-instance v0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog$1;-><init>(Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->clickListener:Landroid/view/View$OnClickListener;

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->mSetOnce:Z

    .line 175
    new-instance v0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog$2;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog$2;-><init>(Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->onClick:Landroid/view/View$OnClickListener;

    .line 185
    new-instance v0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog$3;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog$3;-><init>(Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->onKeyDown:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->mType:I

    return v0
.end method

.method static synthetic access$100(Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;)Lcom/didi/beatles/ui/component/BtsHourMinutePicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->mPicker:Lcom/didi/beatles/ui/component/BtsHourMinutePicker;

    return-object v0
.end method

.method private bindUI(Landroid/view/View;)V
    .locals 3
    .parameter "root"

    .prologue
    .line 87
    const v0, 0x7f08010d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->mBtnConfirm:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f08010c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->mBtnCancel:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f08010e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsHourMinutePicker;

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->mPicker:Lcom/didi/beatles/ui/component/BtsHourMinutePicker;

    .line 90
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->mBtnConfirm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->mBtnCancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->mPicker:Lcom/didi/beatles/ui/component/BtsHourMinutePicker;

    iget v1, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->mStartHour:I

    iget v2, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->mEndHour:I

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/ui/component/BtsHourMinutePicker;->setStartEndHour(II)V

    .line 94
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->mPicker:Lcom/didi/beatles/ui/component/BtsHourMinutePicker;

    iget v1, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->mSelectedHour:I

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsHourMinutePicker;->setCurrentHour(I)V

    .line 95
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->mPicker:Lcom/didi/beatles/ui/component/BtsHourMinutePicker;

    iget v1, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->mSelectedMinute:I

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsHourMinutePicker;->setCurrentMinute(I)V

    .line 96
    return-void
.end method

.method public static newInstance(IIIII)Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;
    .locals 3
    .parameter "type"
    .parameter "start"
    .parameter "end"
    .parameter "selected_hour"
    .parameter "selected_minute"

    .prologue
    .line 41
    new-instance v1, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;

    invoke-direct {v1}, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;-><init>()V

    .line 43
    .local v1, fragment:Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "type"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 45
    const-string v2, "start"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    const-string v2, "end"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    const-string v2, "selected_hour"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    const-string v2, "selected_minute"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    invoke-virtual {v1, v0}, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->setArguments(Landroid/os/Bundle;)V

    .line 53
    return-object v1
.end method

.method private parseIntent()V
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->mType:I

    .line 79
    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "start"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->mStartHour:I

    .line 80
    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "end"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->mEndHour:I

    .line 82
    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "selected_hour"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->mSelectedHour:I

    .line 83
    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "selected_minute"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->mSelectedMinute:I

    .line 84
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 155
    :try_start_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->dismissAllowingStateLoss()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const/4 v0, 0x2

    const v1, 0x7f0c0002

    invoke-virtual {p0, v0, v1}, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->setStyle(II)V

    .line 131
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 59
    const v3, 0x7f03001e

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 61
    .local v1, v:Landroid/view/View;
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->parseIntent()V

    .line 62
    invoke-direct {p0, v1}, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->bindUI(Landroid/view/View;)V

    .line 64
    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 65
    .local v0, dialog:Landroid/app/Dialog;
    iget-object v3, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->onKeyDown:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 67
    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 68
    .local v2, wmlp:Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x50

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 69
    const/high16 v3, 0x3f00

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 70
    const v3, 0x7f0c0012

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 71
    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 74
    return-object v1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->mSetOnce:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->mSetOnce:Z

    .line 172
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 173
    return-void
.end method

.method public show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 1
    .parameter "transaction"
    .parameter "tag"

    .prologue
    .line 136
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 140
    :goto_0
    return v0

    .line 137
    :catch_0
    move-exception v0

    .line 140
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .parameter "manager"
    .parameter "tag"

    .prologue
    .line 146
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    goto :goto_0
.end method
